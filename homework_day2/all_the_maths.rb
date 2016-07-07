=begin

Question #6:

Do All the Maths!

Create a program that will take two numbers and then gives the user a choice of what kind of arthimetic they'd like done to the two numbers. Include at least: add, subtract, multiply and divide. This time you really gotta use methods!

=end

def add(x,y)
	puts "Your answer is: #{x+y}"
end

def subtract(x,y)
	# I don't like negative numbers,
	# so let's re-arrange the numbers
	# to make sure we get a positive result
	if x > y
		puts "Your answer is: #{x-y}"
	else
		puts "Your answer is: #{y-x}"
	end
end

def multiply(x,y)
	puts "Your answer is #{x*y}"
end

def divide(x,y)
	# Sorta same idea as the subtract method,
	# let's get a whole number for the quotient
	if x > y
		puts "Your answer is: #{x/y}"
	else
		puts "Your answer is: #{y/x}"
	end
end


def menu(num1, num2)
	puts "Now what would you like done with #{num1} & #{num2}?"
	puts "------------------------"
	puts "1. Add"
	puts "2. Subtract"
	puts "3. Multiply"
	puts "4. Divide"
	puts "5. Exit Program"

	choice = gets.chomp.to_i

	case choice
		when 1
			puts `clear`
			add(num1,num2)
			menu(num1,num2)
		when 2
			puts `clear`
			subtract(num1,num2)
			menu(num1,num2)
		when 3
			puts `clear`
			multiply(num1,num2)
			menu(num1,num2)
		when 4
			puts `clear`
			divide(num1,num2)
			menu(num1,num2)
		when 5
			puts `clear`
			puts "Thanks for coming!"
		else
			puts `clear`
			puts "Not a valid selection. Try again."
			menu(num1,num2)
	end
end


puts "Let's do some math! First we need some numbers..."
print "Number One: "
num1 = gets.chomp.to_f
print "Number Two: "
num2 = gets.chomp.to_f

menu(num1, num2)