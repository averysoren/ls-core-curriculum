# how_old_is_teddy?.rb

puts "What's the name?"
name = gets.chomp
name = "Teddy" if name.empty?

puts "#{name} is #{rand(20..200)}!"

