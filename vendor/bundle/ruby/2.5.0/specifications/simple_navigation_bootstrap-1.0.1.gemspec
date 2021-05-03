# -*- encoding: utf-8 -*-
# stub: simple_navigation_bootstrap 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "simple_navigation_bootstrap".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Pavel Shpak".freeze, "Nicolas Rodriguez".freeze]
  s.date = "2016-06-24"
  s.description = "This gem adds Bootstrap2 and Bootstrap3 renderers for SimpleNavigation".freeze
  s.email = ["shpakvel@gmail.com".freeze, "nrodriguez@jbox-web.com".freeze]
  s.homepage = "https://github.com/jbox-web/simple_navigation_bootstrap".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.5".freeze
  s.summary = "A Ruby gem that adds Bootstrap renderers for SimpleNavigation".freeze

  s.installed_by_version = "2.7.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<simple-navigation>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<actionpack>.freeze, [">= 0"])
      s.add_development_dependency(%q<actionview>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<simple-navigation>.freeze, ["~> 4.0"])
      s.add_dependency(%q<actionpack>.freeze, [">= 0"])
      s.add_dependency(%q<actionview>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<simple-navigation>.freeze, ["~> 4.0"])
    s.add_dependency(%q<actionpack>.freeze, [">= 0"])
    s.add_dependency(%q<actionview>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
