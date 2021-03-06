class Problem
	attr_accessor :question, :answer

	def initialize(question,answer)
		@question = question
		@answer = answer
	end
end

@quiz = []

def take_quiz
	system("clear")
	score = 0
	@quiz.each_with_index do |problem, index|
		puts "##{index+1}. #{problem.question}"
		ans = gets.chomp
		if ans == problem.answer
			puts "Damn, you're good."
			score += 1
		else
			puts "Wrong. So very, very wrong."
		end
	end

	puts "You got a score of #{score}/#{@quiz.length}!"
end

def ready4quiz
	system("clear")
	puts "Ready to take the quiz?"
	ready = gets.chomp.downcase

	affirmatives = ["y", "yes", "yup", "yep", "yes'm", "yessir", "si, capitan"]

	if affirmatives.include? ready
		take_quiz
	else
		system("clear")
		puts "Okay. I'll wait."
		print "."
		sleep(2)
		print "."
		sleep(2)
		puts "."
		sleep(2)
		ready4quiz
	end
end

puts "Make a Quiz/Take a Quiz"
puts "Let's make a quiz!"
sleep(2)
puts "\nHow many questions should the quiz have?"
num = gets.chomp.to_i

puts "Okay, let's create #{num} questions and answers."

num.times do
	puts "Give me a question:"
	q = gets.chomp
	puts "And what's the answer?"
	a = gets.chomp
	new_prob = Problem.new(q, a)
	@quiz.push(new_prob)
end

ready4quiz
