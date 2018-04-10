lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'
require 'tsm-%{gem_name}/version'

Gem::Specification.new do |s|
  s.name        = 'tsm-%{gem_name}'
  s.version     = TSM::%{gem_name_camel}::VERSION
  s.date        = Date.today.to_s
  s.summary     = "%{description}"
  s.description = "%{description}"
  s.authors     = ["Danny Ben Shitrit"]
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.*']
  s.executables = ["%{gem_name}"]
  s.homepage    = 'https://github.com/dannyben/%{gem_name}'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.4.0"

  s.metadata['allowed_push_host'] = 'http://nowhere.telesofia.com'

  s.add_runtime_dependency 'super_docopt', '~> 0.1'

  s.add_development_dependency 'byebug', '~> 9.0'
  s.add_development_dependency 'rdoc', '~> 5.1'
  s.add_development_dependency 'rspec', '~> 3.6'
  s.add_development_dependency 'rspec_fixtures', '~> 0.3'
  s.add_development_dependency 'runfile', '~> 0.10'
  s.add_development_dependency 'runfile-tasks', '~> 0.4'
  s.add_development_dependency 'simplecov', '~> 0.15'
  s.add_development_dependency 'yard', '~> 0.9'
  s.add_development_dependency 'github_changelog_generator', '~> 1.14'
end
