animals = %w(horse dog rhinoceros tiger kangaroo cat walrus)

fave = "tiger"

animals.each do |animal|
	if animal == fave
		puts "Ooh! I love the #{animal}!"
	end
end