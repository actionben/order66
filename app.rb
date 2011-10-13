require 'rubygems'
require 'sinatra'
require 'haml'
require 'kramdown'

module Kramdown
 include Haml::Filters::Base

 def render(text)
   ::Kramdown::Document.new(text).to_html
 end
end

get '/' do
  response.headers['Cache-Control'] = 'public, s-maxage=86400'
  haml :index
end

get '/stylesheets/main.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :'stylesheets/main'
end
