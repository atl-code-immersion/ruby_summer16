class Person

	def initialize(name,age)
		@name = name
		@age = age
	end

	def name
		@name
	end

	def age
		@age
	end

	def birthday
		@age += 1
	end

	def name_change(new_name)
		@name = new_name
	end

end

class Product

	attr_accessor :name, :price, :quantity

	def initialize(name,price,quantity)
		@name = name
		@price = price
		@quantity = quantity
	end

end

class Vehicle

	attr_accessor :color, :year, :make, :model

	def initialize(make, model, color, year)
		@make = make
		@model = model
		@color = color
		@year = year
	end

end

# my_car = Vehicle.new("Toyota","Highlander","Maroon",2015)

# puts "My car is a #{my_car.color} #{my_car.year} #{my_car.make} #{my_car.model}."

# table = Product.new("fancy table",190.99,5)

# puts "Welcome to The Store. Would you like to buy a #{table.name}? It only costs $#{table.price}! And we have #{table.quantity} in stock."

# puts "How many would like to purchase today?"

# amount = gets.chomp.to_i

# table.quantity -= amount

# puts "Well, now we have #{table.quantity} left."

# profile1 = Person.new("Aaron",35)
# profile2 = Person.new("Mandy",25)

# puts profile1
# puts "Welcome, #{profile1.name}. You are #{profile1.age}-years-old."


puts "Inventory Program!"

puts "Enter product details. Type 'done' when complete."

name = ""
product_arr = []

while name != "done"
	print "Product name: "
	name = gets.chomp
	if name == "done"
		break
	end
	print "Product price: $"
	price = gets.chomp.to_f
	print "Quantity In Stock: "
	quantity = gets.chomp.to_i

	new_item = Product.new(name,price,quantity)
	product_arr.push(new_item)
	puts `clear`
end

puts `clear`

puts "Inventory List"
puts "--------------"

product_arr.each_with_index do |item,index|
	puts "#{index+1}. #{item.name}, $#{item.price}, #{item.quantity}"
end















