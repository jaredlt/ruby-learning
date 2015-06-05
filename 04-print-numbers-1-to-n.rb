# 04. Write a program that asks the user for a number n and prints the sum of the numbers 1 to n

def numbers
	puts "Give me a number between 1 and 10"
	number = gets.chomp.to_i
	count = 1
	sum = 0
	while count <= number
		sum += count
		count += 1
	end
	puts "The sum of the numbers 1 to #{number} is #{sum}"
end

numbers