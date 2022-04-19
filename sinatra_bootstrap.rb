require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb "Greeting you in our barbershop!"
end

get '/about' do
  erb :about
end

get '/contacts' do
  erb :contacts
end

post '/contacts' do
        @user_email = params[:user_email] # получить, то что отправил браузер
        @user_message = params[:user_message] # получить, то что отправил браузер

        output = File.open('./public/contacts.txt', 'a')
        output.write "User: #{@user_email}, message: #{@user_message}\n"
        output.close
end
