class Customer

	attr_accessor :name, :pin

	def initialize(name, pin)
		@name = name
		@pin = pin
	end

end

class Account

	attr_accessor :customer, :balance, :acct_type

	def initialize(customer, balance, acct_type)
		@customer = customer
		@balance = balance
		@acct_type = acct_type
	end

	def deposit
		system("clear")
		puts "How much would you like to deposit today?"
		amount = gets.chomp.to_f

		@balance += amount

		puts "Your balance is now $#{'%.2f'%(@balance)}"
	end

	def withdrawal
		system("clear")
		puts "How much would you like to withdraw today?"
		amount = gets.chomp.to_f

		if amount < @balance
			@balance -= amount
		else
			puts "Insufficient Funds!"
		end

		puts "Your balance is now $#{'%.2f'%(@balance)}"
	end

end

@customers = []
@accounts = []

def main_menu
	puts "Welcome to Tech Talent Bank!"
	puts "Please choose from the following:"
	puts "---------------------------------"
	puts "1. Sign Up (New Customers)"
	puts "2. Sign In (Returning Customers)"

	choice = gets.chomp.to_i

	case choice
		when 1
			system("clear")
			sign_up
		when 2
			system("clear")
			sign_in
		else
			system("clear")
			puts "Not a valid selection."
			main_menu
	end
end

def sign_up
	puts "Thank you for choosing TTB! Please give us some information to create a new customer profile!"

	print "What is your full name: "
	name = gets.chomp
	print "Create a 4-digit PIN: "
	pin = gets.chomp

	new_customer = Customer.new(name, pin)
	@customers.push(new_customer)

	new_account_menu
end

def new_account_menu
	puts "What type of account do you want?"
	puts "---------------------------------"
	puts "1. Checking"
	puts "2. Savings"
	puts "3. Both"

	choice = gets.chomp.to_i

	case choice
		when 1
			create_account("checking")
		when 2
			create_account("savings")
		when 3
			create_account("both")
		else
			puts "Not a valid selection."
			new_account_menu
	end
end

def create_account(acct_type)
	if acct_type == "both"
		puts "What will be your initial deposit for checking?"
		check_dep = gets.chomp.to_f
		puts "What will be your initial deposit for savings?"
		sav_dep = gets.chomp.to_f

		new_account = Account.new(@customers.last, check_dep, "checking")
		@accounts.push(new_account)
		new_account = Account.new(@customers.last, sav_dep, "savings")
		@accounts.push(new_account)
	else
		puts "What will be your initial deposit for #{acct_type}?"
		deposit = gets.chomp.to_f
		new_account = Account.new(@customers.last, deposit, acct_type)
		@accounts.push(new_account)
	end

	continue_or_end
end

def continue_or_end
	puts "How would you like to continue?"
	puts "-------------------------------"
	puts "1. Continue to Account Menu"
	puts "2. End Session"

	choice = gets.chomp.to_i

	case choice
		when 1
			system("clear")
			account_filter(@customers.last)
		when 2
			system("clear")
			main_menu
		else
			system("clear")
			puts "Not a valid selection."
			continue_or_end
	end
end

def sign_in
	puts "What is the name on the acccount?"
	name = gets.chomp
	puts "What is your PIN code?"
	pin = gets.chomp

	customer_found = false
	@customers.each do |customer|
		if customer.name == name && customer.pin == pin
			account_filter(customer)
			customer_found = true
		end
	end

	if customer_found == false
		puts "Not matches found. Try again."
		sign_in
	end
end

def account_filter(customer)
	customer_accounts = []

	@accounts.each do |acct|
		if acct.customer.name == customer.name && acct.customer.pin == customer.pin
			customer_accounts.push(acct)
		end
	end

	if customer_accounts.length == 1
		account_menu(customer_accounts[0])
	else
		puts "Which account would you like to view?"
		puts "-------------------"
		puts "1. Checking"
		puts "2. Savings"

		choice = gets.chomp.to_i

		if choice == 1
			account_menu(customer_accounts[0])
		else
			account_menu(customer_accounts[1])
		end
	end
end

def account_menu(account)
	puts "What would you like to do today?"
	puts "--------------------"
	puts "1. Check Balance"
	puts "2. Make a Deposit"
	puts "3. Make a Withdrawal"
	puts "4. End Session"

	choice = gets.chomp.to_i

	case choice
		when 1
			system("clear")
			puts "The current balance on your #{account.acct_type} account is $#{'%.2f'%account.balance}"
			account_menu(account)
		when 2
			account.deposit
			account_menu(account)
		when 3
			account.withdrawal
			account_menu(account)
		when 4
			system("clear")
			main_menu
		else
			system("clear")
			puts "Not a valid selection."
			account_menu(account)
	end
end

main_menu