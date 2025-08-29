require 'sinatra'
require 'opentelemetry/sdk'
require 'opentelemetry/exporter/otlp'
require 'opentelemetry/instrumentation/sinatra'

OpenTelemetry::SDK.configure do |c|
  c.service_name = 'tail-sampling-test'
  c.use 'OpenTelemetry::Instrumentation::Sinatra'
end

get '/' do
  'Hello, world!'
end

get %r{/([\d]+)} do |n|
  sleep n.to_i
  n
end
