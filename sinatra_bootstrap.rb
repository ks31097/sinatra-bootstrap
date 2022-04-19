require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @title = "Barbershop"
  erb "Greeting you in our barbershop!"
end

get '/about' do
  @title = "О нас"
  erb :about
end

get '/contacts' do
  @title = 'Контакты'
  erb :contacts
end

post '/contacts' do
        @user_email = params[:user_email] # получить, то что отправил браузер
        @user_message = params[:user_message] # получить, то что отправил браузер

        @title = 'Контакты'
        @message = 'Информация успешно отправлена!'

        output = File.open('./public/contacts.txt', 'a')
        output.write "User email: #{@user_email}, user message: #{@user_message}\n"
        output.close

        erb :message
end
