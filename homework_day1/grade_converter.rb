# Question #1: Grade Converter
# Write a program that asks for a score (an integer), 
# and assigns a letter grade based on the score. 

puts "Enter the score:"

score = gets.chomp.to_i

if score > 100
	puts "Wrong score -- no extra credit was given!"
else
	print "With a score of #{score}, you get "

	if score <= 100 && score >= 90
		puts "an A"
	elsif score <= 89 && score >= 80
		puts "a B"
	elsif score <= 79 && score >= 70
		puts "a C"
	elsif score <= 69 && score >= 60
		puts "a D"
	else
		puts "an F"
	end
end