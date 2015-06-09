#07. Write a program that prints a multiplication table for numbers up to 12.

# take input for max multiplication tables number eg. 12
multiplcation_max = 12

# create array of integers from 0 to input
numbers = []

for n in 0..multiplcation_max
	numbers << n
end

# will be an array of arrays, with each sub array holding a row of the multiplication table
multiples = []

location = 0
while location <= multiplcation_max do
	multiple = []
	# start at 0 and multiply with each of the array elements, saving each into a new array (multiple)
	numbers.each {|n| multiple << location * n}
	# each row of the multiplcation table is stored as an array into a new, array of arrays
	multiples << multiple
	location += 1
end

##### Prettify
# find number of characters for the biggest number eg. 144 has 3 characters
# need this for pretty display (all aligned)
multiplcation_max_squared = multiplcation_max ** 2
max_length = multiplcation_max_squared.to_s.size

# create new class of 'multiples' and convert to string so can prepend spaces
# leave original array as integers so it's easy to modify / poke later
multiples_pretty = multiples
multiples_pretty.map! do |x|
	x.map { |e| e.to_s }
end

# prepend spaces to each number in each array so each number has the same number of characters
multiples_pretty.map do |x|
	x.map do |e|
		while e.size < max_length do
			e.insert(0, " ")
		end
	end
end
##### End Prettify

#print multiplcation tables
count = 0
while count <= multiplcation_max do
	puts multiples_pretty[count].join(" ")
	count += 1
end

## TODO: add header row and column :/