require 'sinatra'


get '/' do
	erb :name_number_game
end

post '/input' do	
	name = params[:user_name]
	erb :get_age, :locals => {:name => name}
end 

post '/age' do
	age = params[:user_age]
	erb :favorite_numbers, :locals => {:age => age, :name => name}
end 

post '/favorite_numbers' do
	favorite_numbers1 = params[:user_fav_number1]
	favorite_numbers2 = params[:user_fav_number2]
	favorite_numbers3 = params[:user_fav_number3]
	sum  = favorite_numbers1.to_i + favorite_numbers2.to_i + favorite_numbers3.to_i
		if sum < age
			erb :sum, :locals => {:sum => sum, :fav1 => favorite_numbers1, :fav2 => favorite_numbers2, :fav3 => favorite_numbers3, :result => "Sum is less than age."}
		else
			erb :sum, :locals => {:sum => sum, :fav1 => favorite_numbers1, :fav2 => favorite_numbers2, :fav3 => favorite_numbers3, :result => "Sum is greater than age."}
		end 
end


	




