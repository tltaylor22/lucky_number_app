require 'sinatra'

class LuckyNumberApp < Sinatra::Base

	get '/' do
		erb :intro
	end

	post '/intro' do
		yes = params[:yes_select]
		redirect '/name?'
	end

	get '/name' do
		intro = params[:intro]
		name = params[:name_input]
		erb :name, locals: {intro: intro}
	end

	post '/name' do
		name = params[:name_input]
		redirect '/picknum?name=' + name
		
	end
end

# number = 1

# 100.times do
# 	if number % 3 == 0 && number % 5 == 0
# 	# or you could use:
# 	#if number % 15 == 0
# 		puts "mined minds"
# 	elsif number % 3 == 0
# 		puts "mined"
# 	elsif number % 5 == 0
# 		puts "mind"
# 	else
# 		puts number
# 	end
# 	number = number + 1
# end