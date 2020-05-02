# -*- encoding: utf-8 -*-
# stub: url 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "url".freeze
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tal Atlas".freeze]
  s.date = "2011-07-25"
  s.description = "A simple url object to allow for OO based manipulation and usage of a url".freeze
  s.email = "me@tal.by".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.homepage = "http://github.com/talby/url".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A URL object".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0.7.1"])
    else
      s.add_dependency(%q<rspec>.freeze, ["~> 2"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0.7.1"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 2"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0.7.1"])
  end
end
