# -*- encoding: utf-8 -*-
# stub: guard-rubocop 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-rubocop".freeze
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Yuji Nakayama".freeze]
  s.date = "2020-10-27"
  s.description = "Guard::RuboCop automatically checks Ruby code style with RuboCop when files are modified.".freeze
  s.email = ["nkymyj@gmail.com".freeze]
  s.homepage = "https://github.com/yujinakayama/guard-rubocop".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.0.8".freeze
  s.summary = "Guard plugin for RuboCop".freeze

  s.installed_by_version = "3.0.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<rubocop>.freeze, ["< 2.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>.freeze, [">= 4.2.3", "< 5.0"])
      s.add_development_dependency(%q<launchy>.freeze, ["~> 2.4"])
      s.add_development_dependency(%q<rake>.freeze, [">= 12.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.7"])
    else
      s.add_dependency(%q<guard>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rubocop>.freeze, ["< 2.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<guard-rspec>.freeze, [">= 4.2.3", "< 5.0"])
      s.add_dependency(%q<launchy>.freeze, ["~> 2.4"])
      s.add_dependency(%q<rake>.freeze, [">= 12.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<guard>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rubocop>.freeze, ["< 2.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<guard-rspec>.freeze, [">= 4.2.3", "< 5.0"])
    s.add_dependency(%q<launchy>.freeze, ["~> 2.4"])
    s.add_dependency(%q<rake>.freeze, [">= 12.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.7"])
  end
end
