require 'sinatra'
get '/' do
	"Hello World!"
end

get '/about' do
	"My name is term"
end

get '/hello/:name/:age' do
	"Well, hello there, "  + params[:name].upcase + ". Your age is " + params[:age]
end

get '/something' do
	"THIS IS SPARTA!!!!"
end

get '/form' do
	erb :form
end

post '/form' do
	first_name = params[:message]
	"Hey, form works now for, #{first_name}!"
end