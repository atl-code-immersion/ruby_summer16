=begin
Ask the user for 5 numbers,
store them in an array,
then find the sum, product, largest, 
and smallest of those numbers.
=end

# puts "Please give me five numbers (hit enter after each number)..."
# numbers = []
# 5.times do
# 	num = gets.chomp.to_i
# 	numbers.push(num)
# end

puts "Please give me five numbers (all on the same line; no commas, please)..."

numbers = gets.chomp

numbers = numbers.split()

numbers = numbers.map(&:to_i)

sum = 0
product = 1

numbers.each do |num|
	sum += num
	product *= num
end

puts "The sum of those numbers is: #{sum}"
puts "The product of those numbers is: #{product}"
puts "The smallest number you gave was #{numbers.min}"
puts "The largest number you gave was #{numbers.max}"






