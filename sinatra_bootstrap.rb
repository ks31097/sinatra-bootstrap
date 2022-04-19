require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb "Greeting you in our barbershop!"
end

get '/about' do
  erb :about
end
