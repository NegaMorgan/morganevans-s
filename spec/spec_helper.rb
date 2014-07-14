ENV["SINATRA_ENV"] = "test"

require_relative '../config/environment'
require 'rack/test'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
end

def app
  Rack::Builder.parse_file('config.ru').first
end
