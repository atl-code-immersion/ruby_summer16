#students = ['Connor','Dave','Reggie','Kevin','Jason','Heather','Katie','Aaron','Mandy']

students = []

name = ""

puts "Who showed up to class today? (type 'done' when finished)"
while name != "done"
	print "Name: "
	name = gets.chomp
	if name != "done"
		students.push(name)
	end
end


students.shuffle!

count = 0

if students.length == 1
	puts "Sorry, #{students[0]}, you're flying solo today."
else
	until count >= students.length
		if students.length % 2 == 1 #odd amount of students
			if count == students.length - 3
				puts "#{students[count]}, #{students[count+1]} & #{students[count+2]}"
				break
			else
				puts "#{students[count]} & #{students[count+1]}"
			end
		else #even amount students
			puts "#{students[count]} & #{students[count+1]}"
		end
		count += 2
	end
end