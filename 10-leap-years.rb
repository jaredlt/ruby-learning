# 10. Write a program that prints the next 20 leap years.

# Leap year definition: There is a leap year every year whose number is perfectly divisible by four - except for years which are both divisible by 100 and not divisible by 400. The second part of the rule effects century years. For example; the century years 1600 and 2000 are leap years, but the century years 1700, 1800, and 1900 are not. This means that three times out of every four hundred years there are eight years between leap years.

def is_a_leap_year?(n)
	if n % 100 == 0  # check if century year eg. 1700
		if n % 400 == 0 # omits every 3 of 4 century years
			return true
		else
			return false
		end
	else
		if n % 4 == 0
			return true
		else
			return false
		end
	end
end

# Variables
how_many_leap_years = 20
count = 0
leap_years = []

# get current year
require "Date"
current_year = Date.today.strftime("%Y").to_i

year_to_check = current_year + 1

# check each year to see if it's a leap year
until count == how_many_leap_years do
	if is_a_leap_year?(year_to_check) == true
		leap_years << year_to_check
		count += 1
	end
	year_to_check += 1
end

puts "Next #{how_many_leap_years} leap years:"
puts leap_years