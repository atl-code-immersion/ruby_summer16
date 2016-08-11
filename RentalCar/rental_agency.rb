# This program is not complete, but works to a point.
# Will complete as soon as I can.

class Customer

	attr_accessor :first_name, :last_name, :age, :city, :lic_number

	def initialize(first_name, last_name, age, city, lic_number)
		@first_name = first_name
		@last_name = last_name
		@lic_number = lic_number
		@age = age
		@city = city
	end
end

class Vehicle

	attr_accessor :make, :model, :year, :mileage, :lic_plate, :status, :customer

	def initialize(make, model, year, mileage, lic_plate, status, space, customer)
		@make = make
		@model = model
		@year = year
		@mileage = mileage
		@lic_plate = lic_plate
		@status = status
		@customer = customer
	end

	def rent_vehicle(customer)
		@status = "rented"
		@customer = customer
	end

	def return_vehicle(mileage)
		@status = "available"
		@customer = nil
		@mileage = mileage
	end
end

@vehicles = []
@customers = []
@current_customer = nil

def main_menu
	clear_screen
	puts "*************************************************"
	puts "****  Welcome to the Car Rental Application  ****"
	puts "*************************************************"
	puts "****  Please select from the following menu: ****"
	puts "1. Check for Available Vehicle"
	puts "2. Create New Vehicle Record"
	puts "3. Create New Customer Record"

	choice = gets.chomp.to_i

	case choice
		when 1
			clear_screen
			check_availability
		when 2
			clear_screen
			new_vehicle
		when 3
			clear_screen
			new_customer
		else
			puts "NOT A VALID SELECTION!"
			sleep(2)
			clear_screen
			main_menu
	end
end

def new_vehicle
	puts "Please Enter the Following Information: "
	print "Vehicle Make: "
	make = gets.chomp
	print "Vehicle Model: "
	model = gets.chomp
	print "Vehicle Year: "
	year = gets.chomp
	print "Vehicle License Plate: "
	lic_plate = gets.chomp.upcase
	print "Current Odometer Reading: "
	mileage = gets.chomp.to_i
	print "What parking spot is it in? "
	space = gets.chomp.upcase
	vehicle = Vehicle.new(make, model, year, mileage, lic_plate, space, "available", nil)
	@vehicles.push(vehicle)

	puts "\nWould you like to create another New Vehicle Record?"
	ans = gets.chomp.downcase

	if ans == "y"
		clear_screen
		new_vehicle
	else
		clear_screen
		main_menu
	end
end

def new_customer
	puts "Please Enter the Following Information: "
	print "First Name: "
	fname = gets.chomp
	print "Last Name: "
	lname = gets.chomp
	print "Customer's Age: "
	age = gets.chomp
	print "Customer's Home State: "
	city = gets.chomp
	print "License #: "
	lic_num = gets.chomp

	customer = Customer.new(fname, lname, age, state, lic_num)
	@customers.push(customer)

	puts "\nWould this customer like to rent a vehicle?"
	ans = gets.chomp.downcase

	if ans[0] == "y"
		clear_screen
		check_availability
	else
		clear_screen
		main_menu
	end

end

def customer_lookup
	puts "Customer Look-Up"
	puts "----------------"
	print "Driver License Number: "
	lic_num = gets.chomp
	print "Home State: "
	state = gets.chomp

	@customers.each do |customer|
		if customer.lic_number == lic_num && customer.state = state
			@current_customer = customer
		end
	end

end

def check_availability
	puts "Here are the vehicles currently available:\n"
	@vehicles.each_with_index do |vehicle, index|
		if vehicle.status == "available"
			puts "Vehicle #{index+1}"
			puts "#{vehicle.make} #{vehicle.model} (#{vehicle.year})"
			puts "Plate #: #{vehicle.lic_plate}"
			puts "Current Mileage: #{vehicle.mileage}\n\n"
		end
	end

	#choose a vehicle
	choice = gets.chomp.to_i
	@vehicles.each_with_index do |vehicle, index|
		if choice == (index+1)
			vehicle.rent_vehicle(@current_customer)
			puts "Return to Main Menu?"
			ans = gets.chomp.downcase
			if ans[0] == "y"
				clear_screen
				main_menu
			else
				clear_screen
				puts "Okay, well...see you later then, I guess."
			end
		end
	end
end



def clear_screen
	Gem.win_platform? ? (system "cls") : (system "clear")
end

main_menu










