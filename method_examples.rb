def pounds_to_kilos(weight)
	kilos = weight * 0.453592
end

puts "How many pounds is that bag of fruit?"
lbs = gets.chomp.to_i

puts "Oh, you know, that's #{pounds_to_kilos(lbs)} in kilograms."