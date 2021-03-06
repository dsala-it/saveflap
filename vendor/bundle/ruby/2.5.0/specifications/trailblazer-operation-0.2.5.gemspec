# -*- encoding: utf-8 -*-
# stub: trailblazer-operation 0.2.5 ruby lib

Gem::Specification.new do |s|
  s.name = "trailblazer-operation".freeze
  s.version = "0.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nick Sutterer".freeze]
  s.date = "2018-03-23"
  s.description = "Trailblazer's operation object.".freeze
  s.email = ["apotonick@gmail.com".freeze]
  s.homepage = "http://trailblazer.to".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Trailblazer's operation object with railway flow and integrated error handling.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<trailblazer-activity>.freeze, ["< 0.7.0", ">= 0.5.2"])
      s.add_runtime_dependency(%q<trailblazer-context>.freeze, ["< 0.3.0", ">= 0.1.1"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    else
      s.add_dependency(%q<trailblazer-activity>.freeze, ["< 0.7.0", ">= 0.5.2"])
      s.add_dependency(%q<trailblazer-context>.freeze, ["< 0.3.0", ">= 0.1.1"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<trailblazer-activity>.freeze, ["< 0.7.0", ">= 0.5.2"])
    s.add_dependency(%q<trailblazer-context>.freeze, ["< 0.3.0", ">= 0.1.1"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
  end
end
