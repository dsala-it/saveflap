module Trailblazer
  # Running a Circuit instance will run all tasks sequentially depending on the former's result.
  # Each task is called and retrieves the former task's return values.
  #
  # Note: Please use #Activity as a public circuit builder.
  #
  # @param map         [Hash] Defines the wiring.
  # @param stop_events [Array] Tasks that stop execution of the circuit.
  #
  #   result = circuit.(start_at, *args)
  #
  # @see Activity
  # @api semi-private
  #
  # This is the "pipeline operator"'s implementation.
  class Circuit
    def initialize(map, stop_events, name: nil, start_task: map.keys.first)
      @map         = map
      @stop_events = stop_events
      @name        = name
      @start_task  = start_task
    end

    # @param args [Array] all arguments to be passed to the task's `call`
    # @param task [callable] task to call
    Run = ->(task, args, **circuit_options) { task.(args, **circuit_options) }

    # Runs the circuit until we hit a stop event.
    #
    # This method throws exceptions when the returned value of a task doesn't match
    # any wiring.
    #
    # @param task An event or task of this circuit from where to start
    # @param options anything you want to pass to the first task
    # @param flow_options Library-specific flow control data
    # @return [last_signal, options, flow_options, *args]
    #
    # NOTE: returned circuit_options are discarded when calling the runner.
    def call(args, task: @start_task, runner: Run, **circuit_options)
      circuit_options = circuit_options.merge( runner: runner ).freeze # TODO: set the :runner option via arguments_for_call to save the merge?

      loop do
        last_signal, args, _discarded_circuit_options = runner.(
          task,
          args,
          circuit_options
        )

        # Stop execution of the circuit when we hit a stop event (< End). This could be an task's End or Suspend.
        return [ last_signal, args ] if @stop_events.include?(task) # DISCUSS: return circuit_options here?

        task = next_for(task, last_signal) do |next_task, in_map|
          raise IllegalInputError.new("#{task}") unless in_map
          raise IllegalOutputSignalError.new("<#{@name}>[#{task}][ #{last_signal.inspect} ]") unless next_task
        end
      end
    end

    # Returns the circuit's components.
    def to_h
      { map: @map, end_events: @stop_events }
    end

  private
    def next_for(last_task, emitted_signal)
      # p @map
      in_map        = false
      cfg           = @map.keys.find { |t| t == last_task } and in_map = true
      cfg = @map[cfg] if cfg
      cfg         ||= {}
      next_task = cfg[emitted_signal]
      yield next_task, in_map

      next_task
    end

    class IllegalInputError < RuntimeError
    end

    class IllegalOutputSignalError < RuntimeError
    end
  end
end
