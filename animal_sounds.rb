puts "What's your favorite animal?"

ans = gets.chomp.downcase

# if ans == "dog"
# 	puts "Woof!"
# elsif ans == "cat"
# 	puts "Meow."
# elsif ans == "horse"
# 	puts "Neigh"
# elsif ans == "snake"
# 	puts "Hiss"
# elsif ans == "frog"
# 	puts "Ribbit"
# else
# 	puts "Rawr?"
# end

case ans
	when "dog"
		puts "Woof!"
	when "cat"
		puts "Meow"
	when "horse"
		puts "Neigh"
	else
		puts "Rawr?"
end




