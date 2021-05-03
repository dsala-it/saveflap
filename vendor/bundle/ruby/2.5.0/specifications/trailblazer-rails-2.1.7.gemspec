# -*- encoding: utf-8 -*-
# stub: trailblazer-rails 2.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "trailblazer-rails".freeze
  s.version = "2.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nick Sutterer".freeze]
  s.date = "2018-11-21"
  s.email = ["apotonick@gmail.com".freeze]
  s.homepage = "http://trailblazer.to/gems/trailblazer/2.0/rails.html".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.8".freeze
  s.summary = "Convenient Rails support for Trailblazer.".freeze

  s.installed_by_version = "3.0.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 4.0.0"])
      s.add_runtime_dependency(%q<trailblazer>.freeze, [">= 2.1.0.beta1", "< 2.2.0"])
      s.add_runtime_dependency(%q<trailblazer-loader>.freeze, [">= 0.1.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<trailblazer>.freeze, [">= 2.1.0.beta1", "< 2.2.0"])
      s.add_dependency(%q<trailblazer-loader>.freeze, [">= 0.1.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<trailblazer>.freeze, [">= 2.1.0.beta1", "< 2.2.0"])
    s.add_dependency(%q<trailblazer-loader>.freeze, [">= 0.1.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
  end
end
