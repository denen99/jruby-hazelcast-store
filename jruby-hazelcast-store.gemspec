# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jruby-hazelcast-store}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Denenberg"]
  s.date = %q{2010-06-25}
  s.description = %q{}
  s.email = %q{adam@dberg.org}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "README",
     "Rakefile",
     "VERSION",
     "jruby-hazelcast-store.gemspec",
     "lib/jruby-hazelcast-store.rb"
  ]
  s.homepage = %q{http://github.com/denen99/jruby-hazelcast-store}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{jruby interface to Rails Cache for Hazelcast}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jruby-hazelcast>, [">= 0"])
    else
      s.add_dependency(%q<jruby-hazelcast>, [">= 0"])
    end
  else
    s.add_dependency(%q<jruby-hazelcast>, [">= 0"])
  end
end

