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
  s.executables = ['%{gem_name}']
  s.homepage    = 'https://github.com/dannyben/%{gem_name}'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.4.0"

  s.add_runtime_dependency 'mister_bin', '~> 0.3'
  s.add_runtime_dependency 'colsole', '~> 0.5'
end
