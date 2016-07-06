my_profile = { "name" => "Aaron", "age" => 35, "hometown" => "Santa Clarita", "favorite food" => "burritos" }

my_profile.each do |key, value|
	case key
		when "name"
			puts "My #{key} is #{value}."
		when "age"
			puts "I am #{value}-years-old."
		when "hometown"
			puts "I am from #{value}."
		else
			puts "My #{key} is #{value}."
	end
end