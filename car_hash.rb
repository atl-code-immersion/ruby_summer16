vehicles = { "Focus"=>"Ford", "Mustang"=>"Ford", "Pilot"=>"Honda", "CRV"=>"Honda", "Prius"=>"Toyota", "Highlander"=>"Toyota", "911"=>"Porsche", "Cayenne"=>"Porsche" }

puts "What model car do you drive?"

user_car = gets.chomp

car_found = false

vehicles.each do |k,v|
	if user_car == k
		puts "Oh, that's a #{v}, isn't it?"
		car_found = true
	end
end

if car_found == false
	puts "Sorry, I don't know that car."
end