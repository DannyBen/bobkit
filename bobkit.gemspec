lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bobkit/version'

Gem::Specification.new do |s|
  s.name        = 'bobkit'
  s.version     = Bobkit::VERSION
  s.date        = Date.today.to_s
  s.summary     = "Site Generation Toolkit"
  s.description = "Site Generation Toolkit with Slim, SCSS and CoffeeScript"
  s.authors     = ["Danny Ben Shitrit"]
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.rb']
  s.homepage    = 'https://github.com/DannyBen/bobkit'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.0.0"

  s.add_runtime_dependency 'slim', "~> 3.0"
  s.add_runtime_dependency 'sass', "~> 3.3"
  s.add_runtime_dependency 'coffee-script', '~> 2.4'

  s.add_development_dependency 'runfile', '~> 0.6'
  s.add_development_dependency 'runfile-tasks', '~> 0.4'
  s.add_development_dependency 'byebug', '~> 8.2'
end
