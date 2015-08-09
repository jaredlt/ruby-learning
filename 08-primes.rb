# 08. Write a program that prints all prime numbers. (Note: if your programming language does not support arbitrary size numbers, printing all primes up to the largest number you can represent is fine too.)

require 'prime'

puts "Calculating primes..."

File.open('primes', 'w') { |file| file.puts(Prime.first(100000000)) }

puts "Calculating complete. Results output to file."