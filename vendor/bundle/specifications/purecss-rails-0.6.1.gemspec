# -*- encoding: utf-8 -*-
# stub: purecss-rails 0.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "purecss-rails".freeze
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bruno Henrique - Garu".freeze]
  s.date = "2017-02-14"
  s.description = "Purecss CSS toolkit for Rails".freeze
  s.email = ["squall.bruno@gmail.com".freeze]
  s.homepage = "https://github.com/brunohenrique/purecss-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "purecss-rails project integrates Pure CSS toolkit for Rails Asset Pipeline".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, ["< 6", ">= 3.2.6"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<railties>.freeze, ["< 6", ">= 3.2.6"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, ["< 6", ">= 3.2.6"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
