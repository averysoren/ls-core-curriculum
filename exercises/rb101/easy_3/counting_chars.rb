# counting_chars.rb

print "Please write word or multiple words:"
string = gets.chomp
chars = string.split(" ").join.size

puts "There are #{chars} characters in \"#{string}\""

# Also could have used #delete method to remove the spaces and then called #size

# chars = string.delete(" ").size