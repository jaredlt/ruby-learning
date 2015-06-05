# 04. Write a program that asks the user for a number n and prints the sum of the numbers 1 to n
# 05. Modify the previous program such that only multiples of three or five are considered in the sum, e.g. 3, 5, 6, 9, 10, 12, 15 for n=17

def numbers
	puts "Give me a number between 1 and 100"
	number = gets.chomp.to_i
	count = 1
	sum = 0
	while count <= number
		if count % 3 == 0 or count % 5 == 0
			sum += count
		end
		count += 1
	end
	puts "The sum of the numbers 1 to #{number} (considering only multiples of 3 and 5) is #{sum}"
end

numbers