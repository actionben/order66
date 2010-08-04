require 'rubygems'
require 'sinatra'
require 'haml'
require 'maruku'

get '/' do
  haml :index
end

get '/stylesheets/main.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :'stylesheets/main'
end
