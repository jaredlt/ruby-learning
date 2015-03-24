# Print out a pyramid of asterisks based on a specified width
def asterisk_tree(width=10)
	#fixed variables
	space = " "
	asterisk = "*"

	#dynamic variables
	space_length = width / 2
	asterisk_length = 1

	# loop each line until the max width is reached
	while space_length > 0

		# create string of spaces with specific length
		space_string = space
		while space_string.length < space_length
			space_string += space
		end

		# create string of asterisks with specific length
		asterisk_string = asterisk
		while asterisk_string.length < asterisk_length
			asterisk_string += asterisk
		end

		# add both strings together so we can print it on one line
		full_string = space_string + asterisk_string

		puts full_string

		# update lengths for next line down
		space_length -= 1
		asterisk_length += 2
	end
end

asterisk_tree(10)