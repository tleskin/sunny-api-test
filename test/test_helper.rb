ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/pride'
require 'vcr'


class ActiveSupport::TestCase
  # VCR configuration
  VCR.configure do |config|
    config.cassette_library_dir = "test/fixtures/cassettes"
    config.hook_into :webmock # or :fakeweb
  end

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
