require 'sinatra'

class LuckyNumberApp < Sinatra::Base

	get '/' do
		erb :name
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