puts "What is your name?"
name = gets.chomp
puts "Hi #{name}."

puts "How old are you?"
age = gets.chomp
age = age.to_i
year = 2015 - age
puts "You were born in the year #{year}"