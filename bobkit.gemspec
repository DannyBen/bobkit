lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'
require 'bobkit/version'

Gem::Specification.new do |s|
  s.name        = 'bobkit'
  s.version     = Bobkit::VERSION
  s.date        = Date.today.to_s
  s.summary     = "Site Generation Toolkit"
  s.description = "Site Generation Toolkit with Slim, SCSS, CoffeeScript and Markdown"
  s.authors     = ["Danny Ben Shitrit"]
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.rb']
  s.homepage    = 'https://github.com/DannyBen/bobkit'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.0.0"

  s.add_runtime_dependency 'slim', "~> 3.0"
  s.add_runtime_dependency 'sass', "~> 3.5"
  s.add_runtime_dependency 'sass-globbing', '~> 1.1'
  s.add_runtime_dependency 'coffee-script', '~> 2.4'
  s.add_runtime_dependency 'i18n', '>= 0.8', '< 2.0'
  s.add_runtime_dependency 'filewatcher', '~> 1.0'
  s.add_runtime_dependency 'therubyracer', '~> 0.12'
  s.add_runtime_dependency 'rdiscount', '~> 2.2'

  s.add_development_dependency 'runfile', '~> 0.1'
  s.add_development_dependency 'runfile-tasks', '~> 0.4'
  s.add_development_dependency 'byebug', '~> 9.0'
  s.add_development_dependency 'rspec', '~> 3.6'
  s.add_development_dependency 'simplecov', '~> 0.15'
end
