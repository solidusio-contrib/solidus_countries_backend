# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_countries_backend/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_countries_backend'
  s.version     = SolidusCountriesBackend::VERSION
  s.summary     = 'Restores backend UI for viewing and changing countries and states'
  s.description = 'Restores backend UI for viewing and changing countries and states. It is needed after countries and states UI has been removed from core.'
  s.license     = 'BSD-3-Clause'

  s.author    = 'Solidus Team'
  s.email     = 'contact@solidus.io'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'solidus_core', '~> 2.4.alpha'
  s.add_dependency "solidus_support", ">= 0.1.3"

  s.add_development_dependency 'capybara'
  s.add_development_dependency "capybara-screenshot"
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop', '0.49.1'
  s.add_development_dependency 'rubocop-rspec', '1.4.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
