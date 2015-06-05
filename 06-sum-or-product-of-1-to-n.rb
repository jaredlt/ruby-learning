# 06. Write a program that asks the user for a number n and gives him the possibility to choose between computing the sum and computing the product of 1,…,n.

def sum_or_product
	puts "Give me a number between 1 and 100"
	number = gets.chomp.to_i
	puts "Do you want to calculate the sum or product of 1 to #{number}?"
	input_sum_product = gets.chomp.to_s.downcase

	if input_sum_product == "sum"
		count = 1
		sum = 0
		while count <= number
			sum += count
			count += 1
		end
		puts "The sum of 1 to #{number} is #{sum}"
	else input_sum_product == "product"
		count = 1
		sum = 1
		while count <= number
			sum *= count
			count += 1
		end
		puts "The product of 1 to #{number} is #{sum}"
	end

end

sum_or_product


# update to handle if sum/product input text is wrong eg. if they don't type 'sum' or 'product'
# I'm failing at this... :(

# def sum_or_product
# 	puts "Give me a number between 1 and 100"
# 	number = gets.chomp.to_i
# 	input_sum_product = nil

# 	while input_sum_product != "sum" || input_sum_product != "product"
# 		puts "Do you want to calculate the sum or product of 1 to #{number}?"
# 		input_sum_product = gets.chomp.to_s.downcase

# 		if input_sum_product =="sum"
# 			count = 1
# 			sum = 0
# 			while count <= number
# 				sum += count
# 				count += 1
# 			end
# 			puts "The sum of 1 to #{number} is #{sum}"
# 		elsif input_sum_product == "product"
# 			count = 1
# 			sum = 1
# 			while count <= number
# 				sum *= count
# 				count += 1
# 			end
# 			puts "The product of 1 to #{number} is #{sum}"
# 		else input_sum_product != "sum" || input_sum_product != "product"
# 			puts "sorry"
# 		end
# 	end
# end

# sum_or_product