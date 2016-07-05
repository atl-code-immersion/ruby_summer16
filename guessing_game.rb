puts "Give me a number between 1 and 100, please."
user_num = gets.chomp.to_i

comp_num = rand(1..100)

if user_num == comp_num
	puts "OMG you got it! You really got it!"
elsif user_num >= comp_num - 10 && user_num <= comp_num + 10
	puts "That was pretty close. Good guess. It was #{comp_num}."
else
	puts "No. Wrong. You're just wrong. It's #{comp_num}."
end