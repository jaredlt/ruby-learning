# Given a string s, return a string
# where all occurences of its first char have
# been changed to '*', except do not change
# the first char itself.
# e.g. 'babble' yields 'ba**le'

# s = "babble"

def string_replace_chars_with_asterisks(s)

	s_array = s.chars
	s_asterisks = []

	# TODO: check if array is > 1

	# get first value and store
	first_char = s_array[0]
	s_asterisks << first_char
	# start from 2nd value and check if == first_char and replace with '*'
	s_array[1..-1].each do |i|
		if i == first_char
			i = "*"
		end
		s_asterisks << i
	end

	return s_asterisks.join

end

p string_replace_chars_with_asterisks("babble")