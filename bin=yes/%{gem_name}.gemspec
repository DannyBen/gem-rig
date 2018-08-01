lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'
require '%{gem_name}/version'

Gem::Specification.new do |s|
  s.name        = '%{gem_name}'
  s.version     = %{gem_name_camel}::VERSION
  s.date        = Date.today.to_s
  s.summary     = "%{description}"
  s.description = "%{description}"
  s.authors     = ["Danny Ben Shitrit"]
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.*']
  s.executables = Dir['bin/%{gem_name}*'].map { |f| File.basename f }
  s.homepage    = 'https://github.com/dannyben/%{gem_name}'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.4.0"

  s.add_runtime_dependency 'mister_bin', '~> 0.2'

  s.add_development_dependency 'byebug', '~> 10.0'
  s.add_development_dependency 'github_changelog_generator', '~> 1.14'
  s.add_development_dependency 'rdoc', '~> 6.0'
  s.add_development_dependency 'rspec', '~> 3.6'
  s.add_development_dependency 'rspec_fixtures', '~> 0.3'
  s.add_development_dependency 'runfile', '~> 0.10'
  s.add_development_dependency 'runfile-tasks', '~> 0.4'
  s.add_development_dependency 'simplecov', '~> 0.15'
  s.add_development_dependency 'yard', '~> 0.9'
end
