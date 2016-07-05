puts "What number grade did you get in the class?"

grade = gets.chomp.to_i

if grade >= 60
	puts "Have a nice summer"
else
	puts "See you in summer school"
end