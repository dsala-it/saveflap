require 'syslog'
require 'logger'
require 'thread'

class Syslogger

  MUTEX = Mutex.new

  attr_reader :level, :ident, :options, :facility, :max_octets
  attr_accessor :formatter

  MAPPING = {
    Logger::DEBUG   => Syslog::LOG_DEBUG,
    Logger::INFO    => Syslog::LOG_INFO,
    Logger::WARN    => Syslog::LOG_WARNING,
    Logger::ERROR   => Syslog::LOG_ERR,
    Logger::FATAL   => Syslog::LOG_CRIT,
    Logger::UNKNOWN => Syslog::LOG_ALERT
  }.freeze

  #
  # Initializes default options for the logger
  # <tt>ident</tt>:: the name of your program [default=$0].
  # <tt>options</tt>::  syslog options [default=<tt>Syslog::LOG_PID | Syslog::LOG_CONS</tt>].
  #                     Correct values are:
  #                       LOG_CONS    : writes the message on the console if an error occurs when sending the message;
  #                       LOG_NDELAY  : no delay before sending the message;
  #                       LOG_PERROR  : messages will also be written on STDERR;
  #                       LOG_PID     : adds the process number to the message (just after the program name)
  # <tt>facility</tt>:: the syslog facility [default=nil] Correct values include:
  #                       Syslog::LOG_DAEMON
  #                       Syslog::LOG_USER
  #                       Syslog::LOG_SYSLOG
  #                       Syslog::LOG_LOCAL2
  #                       Syslog::LOG_NEWS
  #                       etc.
  #
  # Usage:
  #   logger = Syslogger.new("my_app", Syslog::LOG_PID | Syslog::LOG_CONS, Syslog::LOG_LOCAL0)
  #   logger.level = Logger::INFO # use Logger levels
  #   logger.warn "warning message"
  #   logger.debug "debug message"
  #   logger.info "my_subapp" { "Some lazily computed message" }
  #
  def initialize(ident = $0, options = Syslog::LOG_PID | Syslog::LOG_CONS, facility = nil)
    @ident     = ident
    @options   = options || (Syslog::LOG_PID | Syslog::LOG_CONS)
    @facility  = facility
    @level     = Logger::INFO
    @formatter = proc do |_, _, _, msg|
      msg
    end
  end

  %w{debug info warn error fatal unknown}.each do |logger_method|
    # Accepting *args as message could be nil.
    #  Default params not supported in ruby 1.8.7
    define_method logger_method.to_sym do |*args, &block|
      severity = Logger.const_get(logger_method.upcase)
      return true if @level > severity
      add(severity, nil, args.first, &block)
    end

    unless logger_method == 'unknown'
      define_method "#{logger_method}?".to_sym do
        @level <= Logger.const_get(logger_method.upcase)
      end
    end
  end

  # Log a message at the Logger::INFO level. Useful for use with Rack::CommonLogger
  def write(msg)
    add(Logger::INFO, msg)
  end

  # Logs a message at the Logger::INFO level.
  def <<(msg)
    add(Logger::INFO, msg)
  end

  def puts(msg)
    add(Logger::INFO, msg)
  end

  # Low level method to add a message.
  # +severity+::  the level of the message. One of Logger::DEBUG, Logger::INFO, Logger::WARN, Logger::ERROR, Logger::FATAL, Logger::UNKNOWN
  # +message+:: the message string.
  #             If nil, the method will call the block and use the result as the message string.
  #             If both are nil or no block is given, it will use the progname as per the behaviour of both the standard Ruby logger, and the Rails BufferedLogger.
  # +progname+:: optionally, overwrite the program name that appears in the log message.
  def add(severity, message = nil, progname = nil, &block)
    if message.nil? && block.nil? && !progname.nil?
      message, progname = progname, nil
    end
    progname ||= @ident
    mask = Syslog::LOG_UPTO(MAPPING[@level])
    communication = message || block && block.call
    formatted_communication = clean(formatter.call(severity, Time.now, progname, communication))

    # Call Syslog
    syslog_add(progname, severity, mask, formatted_communication)
  end

  # Set the max octets of the messages written to the log
  def max_octets=(max_octets)
    @max_octets = max_octets
  end

  # Sets the minimum level for messages to be written in the log.
  # +level+:: one of <tt>Logger::DEBUG</tt>, <tt>Logger::INFO</tt>, <tt>Logger::WARN</tt>, <tt>Logger::ERROR</tt>, <tt>Logger::FATAL</tt>, <tt>Logger::UNKNOWN</tt>
  def level=(level)
    @level = sanitize_level(level)
  end

  # Sets the ident string passed along to Syslog
  def ident=(ident)
    @ident = ident
  end

  # Tagging code borrowed from ActiveSupport gem
  def tagged(*tags)
    new_tags = push_tags(*tags)
    yield self
  ensure
    pop_tags(new_tags.size)
  end

  def push_tags(*tags)
    tags.flatten.reject { |i| i.respond_to?(:empty?) ? i.empty? : !i }.tap do |new_tags|
      current_tags.concat(new_tags).uniq!
    end
  end

  def pop_tags(size = 1)
    current_tags.pop size
  end

  def clear_tags!
    current_tags.clear
  end

  def current_tags
    Thread.current[:syslogger_tagged_logging_tags] ||= []
  end

  protected

  def sanitize_level(new_level)
    begin
      new_level = Logger.const_get(new_level.to_s.upcase)
    rescue => _
      raise ArgumentError.new("Invalid logger level `#{new_level.inspect}`")
    end if new_level.is_a?(Symbol)

    unless new_level.is_a?(Integer)
      raise ArgumentError.new("Invalid logger level `#{new_level.inspect}`")
    end

    new_level
  end

  # Borrowed from SyslogLogger.
  def clean(message)
    message = message.to_s.dup
    message.strip! # remove whitespace
    message.gsub!(/\n/, '\\n') # escape newlines
    message.gsub!(/%/, '%%') # syslog(3) freaks on % (printf)
    message.gsub!(/\e\[[^m]*m/, '') # remove useless ansi color codes
    message
  end

  private

  def tags_text
    tags = current_tags
    if tags.any?
      clean(tags.collect { |tag| "[#{tag}] " }.join) << ' '
    end
  end

  def syslog_add(progname, severity, mask, formatted_communication)
    MUTEX.synchronize do
      Syslog.open(progname, @options, @facility) do |s|
        s.mask = mask
        if self.max_octets
          buffer = "#{tags_text}"
          formatted_communication.bytes do |byte|
            buffer.concat(byte)
            # if the last byte we added is potentially part of an escape, we'll go ahead and add another byte
            if buffer.bytesize >= self.max_octets && !['%'.ord,'\\'.ord].include?(byte)
              s.log(MAPPING[severity], buffer)
              buffer = ''
            end
          end
          s.log(MAPPING[severity], buffer) unless buffer.empty?
        else
          s.log(MAPPING[severity], "#{tags_text}#{formatted_communication}")
        end
      end
    end
  end
end
