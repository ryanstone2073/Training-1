require "sinatra"
require "bugsnag"

Bugsnag.configure do |config|
  config.api_key = "bbac50a2b5a2170399edc098fa2033a7"
end

# Enable bugsnag
use Bugsnag::Rack
enable :raise_errors

# Create a "hello world" endpoint
get '/' do
  "Hello World!"
end


# Create an endpoint that crashes
get '/crash' do
  nil.length
end
