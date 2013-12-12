require 'dvr'

def fixture_path
  File.expand_path('../fixtures', __FILE__)
end

def example_request_file
  "#{fixture_path}/requests/rspec_api_documentation.json"
end

RSpec.configure do |config|
  config.color_enabled = true # Use color in STDOUT
end