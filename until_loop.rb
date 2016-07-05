# puts "Give me a number between 1 and 10."

# num = gets.chomp.to_i

# until num == 11
# 	puts num * 2
# 	num += 1
# end

# until num <= -0.5
# 	puts num * 2
# 	num -= 1
# end

puts "Can we go to Mt. Splashmore?"

dad_says = gets.chomp.downcase

until dad_says == "yes"
	puts "Can we go to Mt. Splashmore?"
	dad_says = gets.chomp.downcase
end

puts "Yay! You're the best!"






