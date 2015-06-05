# 02. Write a program that asks the user for his name and greets him with his name.
# 03. Modify the previous program such that only the users Alice and Bob are greeted with their names.

def greeting
	puts "Hello, what is your name?"
	name = gets.chomp
	if name == "Alice" or name == "Bob"
		puts "Hi #{name}!"
	else
		puts "Hey, your name isn't Alice or Bob!"
	end
end

greeting