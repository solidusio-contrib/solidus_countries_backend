require "simplecov"
SimpleCov.start "rails"

ENV["RAILS_ENV"] ||= "test"

require File.expand_path('../dummy/config/environment.rb', __FILE__)

require 'solidus_support/extension/feature_helper'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  FactoryGirl.find_definitions

  config.fail_fast = ENV['FAIL_FAST'] || false
  config.order = 'random'
end
