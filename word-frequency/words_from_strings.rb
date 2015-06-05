# words from strings
def words_from_string(string)
	string.downcase.scan(/[\w']+/) # /[\w']+/ matches sequences containing "word characters" and single quotes
end