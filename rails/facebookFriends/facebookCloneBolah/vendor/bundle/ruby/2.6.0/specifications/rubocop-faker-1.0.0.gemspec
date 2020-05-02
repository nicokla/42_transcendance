# -*- encoding: utf-8 -*-
# stub: rubocop-faker 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rubocop-faker".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "https://github.com/koic/rubocop-faker" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Koichi ITO".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-03-14"
  s.description = "A RuboCop extension for Faker.".freeze
  s.email = ["koic.ito@gmail.com".freeze]
  s.homepage = "https://github.com/koic/rubocop-faker".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A RuboCop extension for Faker.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubocop>.freeze, [">= 0.74"])
    else
      s.add_dependency(%q<rubocop>.freeze, [">= 0.74"])
    end
  else
    s.add_dependency(%q<rubocop>.freeze, [">= 0.74"])
  end
end
