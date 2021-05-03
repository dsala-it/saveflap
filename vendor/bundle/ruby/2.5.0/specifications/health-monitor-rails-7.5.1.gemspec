# -*- encoding: utf-8 -*-
# stub: health-monitor-rails 7.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "health-monitor-rails".freeze
  s.version = "7.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Leonid Beder".freeze]
  s.date = "2018-01-09"
  s.description = "Health monitoring Rails plug-in, which checks various services (db, cache, sidekiq, redis, etc.).".freeze
  s.email = ["leonid.beder@gmail.com".freeze]
  s.homepage = "https://github.com/lbeder/health-monitor-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.5".freeze
  s.summary = "Health monitoring Rails plug-in, which checks various services (db, cache, sidekiq, redis, etc.)".freeze

  s.installed_by_version = "2.7.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 4.0"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
      s.add_development_dependency(%q<capybara-screenshot>.freeze, [">= 0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rediska>.freeze, [">= 0"])
      s.add_development_dependency(%q<resque>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0.5"])
      s.add_development_dependency(%q<sidekiq>.freeze, [">= 3.0"])
      s.add_development_dependency(%q<spork>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<timecop>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 4.0"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_dependency(%q<capybara>.freeze, [">= 0"])
      s.add_dependency(%q<capybara-screenshot>.freeze, [">= 0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rediska>.freeze, [">= 0"])
      s.add_dependency(%q<resque>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0.5"])
      s.add_dependency(%q<sidekiq>.freeze, [">= 3.0"])
      s.add_dependency(%q<spork>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<timecop>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<capybara-screenshot>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rediska>.freeze, [">= 0"])
    s.add_dependency(%q<resque>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0.5"])
    s.add_dependency(%q<sidekiq>.freeze, [">= 3.0"])
    s.add_dependency(%q<spork>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<timecop>.freeze, [">= 0"])
  end
end
