# -*- encoding: utf-8 -*-
# stub: trailblazer-activity-dsl-linear 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "trailblazer-activity-dsl-linear".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nick Sutterer".freeze]
  s.date = "2021-03-03"
  s.description = "Simple DSL to define Trailblazer activities with arbitrary wirings.".freeze
  s.email = ["apotonick@gmail.com".freeze]
  s.homepage = "http://trailblazer.to".freeze
  s.licenses = ["LGPL-3.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "3.0.8".freeze
  s.summary = "Simple DSL to define Trailblazer activities.".freeze

  s.installed_by_version = "3.0.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<trailblazer-activity>.freeze, [">= 0.12.0", "< 1.0.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<trailblazer-developer>.freeze, [">= 0.0.21"])
    else
      s.add_dependency(%q<trailblazer-activity>.freeze, [">= 0.12.0", "< 1.0.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<trailblazer-developer>.freeze, [">= 0.0.21"])
    end
  else
    s.add_dependency(%q<trailblazer-activity>.freeze, [">= 0.12.0", "< 1.0.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<trailblazer-developer>.freeze, [">= 0.0.21"])
  end
end
