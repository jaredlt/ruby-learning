# 09. Write a guessing game where the user has to guess a secret number. After every guess the program tells the user whether his number was too large or too small. At the end the number of tries needed should be printed. It counts only as one try if the user inputs the same number consecutively.

# Variables
min = 1
max = 100
@guess = ""
@guess_count = 0
q1 = "I'm thinking of a number between #{min} and #{max}. What is it?"
too_large = "Sorry, that's too large. Try again."
too_small = "Sorry, that's too small. Try again."
random_number = Random.new.rand(min..max)
puts random_number

def guess_and_count(output)
	puts output
	@guess = gets.chomp.to_i
	@guess_count += 1
end

guess_and_count(q1)

# TODO: input error validation

until @guess == random_number do
	if @guess > random_number
		guess_and_count(too_large)
	else @guess < random_number
		guess_and_count(too_small)
	end
end

puts "Correct! Well done."
puts "You guessed correctly in #{@guess_count} tries."