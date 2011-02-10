require 'rubygems'
require 'sinatra'
require 'haml'
require 'maruku'

get '/' do
  response.headers['Cache-Control'] = 'public, s-maxage=86400'
  haml :index
end

get '/stylesheets/main.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :'stylesheets/main'
end
