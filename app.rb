require 'sinatra'

get '/' do
  'Hello, world!'
end

get %r{/([\d]+)} do |n|
  sleep n.to_i
  n
end
