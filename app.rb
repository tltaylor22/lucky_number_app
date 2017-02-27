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
		intro = params[:intro]
		name = params[:name_input]
		redirect '/picknum?name=' + name 
	end

	get '/picknum' do
		intro = params[:intro]
		name = params[:name]
		number = params[:number_input]
		erb :picknum, locals: {intro: intro, name: name}
	end

	post '/picknum' do
		intro = params[:intro]
		name = params[:name_input]
		number = params[:number_input].to_i
		
		results = 'Sorry, wrong number!'	
			if number % 3 == 0 && number % 5 == 0
				results = "Congratualtions, you hit the JACKPOT!"
			elsif number % 3 == 0
				results = "Congratulations, you are a WINNER"
			elsif number % 5 == 0
				results = "Congratulations, you are a WINNER"
			else
				results
			end
	erb :results, :locals => {intro: intro, name: name, number: number, :results => results}		
	end
end