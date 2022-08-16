require 'sinatra'
require 'logger'
require 'json'

before do
  request.body.rewind
  @request_payload = JSON.parse request.body.read
  @logger ||= Logger.new(STDOUT)
end

post '/' do
  @logger.warn("ZZZZ SLACK ZZZZ #{@request_payload['text']}")
end
