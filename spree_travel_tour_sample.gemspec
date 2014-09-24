# encoding: UTF-8

require 'yaml'
yaml = YAML.load(File.read('SPREE_WBSBOOKS_VERSIONS'))
versions = yaml['gems']

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'wbsbooks_sample'
  s.version     = versions['spree_wbsbooks']
  s.summary     = 'Spree Wbsbooks Sample'
  s.description = 'Load sample books data'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = ['Oleg Krasnov']
  s.email     = 'mail@olegkrasnov.com'
  s.homepage  = 'http://github.com/wbslogistic/wbsbooks_sample'

  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= ' + versions['spree']
  #s.add_dependency 'spree_travel_core'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'

end
