# sort and dispay word frequency

require_relative "words_from_strings"
require_relative "count_frequency"

raw_text = "Sparky the cat sat on the mat and sat on another cat called the cat"

word_list = words_from_string(raw_text)
counts    = count_frequency(word_list)
sorted    = counts.sort_by {|word, count| count}
top_five  = sorted.last(5)
top_five_reverse = top_five.reverse

# puts "word_list: #{word_list}"
# puts "counts: #{counts}"
# puts "sorted: #{sorted}"
# puts "top_five: #{top_five}"
# puts "top_five_reverse: #{top_five_reverse}"

top_five_reverse.each do |word, count|
	puts "#{word}: #{count}"
end