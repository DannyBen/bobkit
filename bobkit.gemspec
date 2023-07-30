lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bobkit/version'

Gem::Specification.new do |s|
  s.name        = 'bobkit'
  s.version     = Bobkit::VERSION
  s.summary     = 'Site Generation Toolkit'
  s.description = 'Site Generation Toolkit with Slim, SCSS, CoffeeScript and Markdown'
  s.authors     = ['Danny Ben Shitrit']
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.rb']
  s.homepage    = 'https://github.com/DannyBen/bobkit'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 3.0'

  s.add_runtime_dependency 'coffee-script', '~> 2.4'
  s.add_runtime_dependency 'filewatcher', '~> 2.0'
  s.add_runtime_dependency 'i18n', '~> 1.7'
  s.add_runtime_dependency 'mini_racer', '~> 0.6'
  s.add_runtime_dependency 'rdiscount', '~> 2.2'
  s.add_runtime_dependency 'sasstool', '~> 0.2'
  s.add_runtime_dependency 'slim', '>= 4.0', '< 6.0'
  s.metadata['rubygems_mfa_required'] = 'true'
end
