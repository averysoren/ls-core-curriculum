# retirement.rb

current_year = Time.now.year

print "What is your age? "
age = gets.chomp.to_i

print "What age would you like to retire? "
retirement_age = gets.chomp.to_i

years_left = retirement_age - age
retirement_year = years_left + current_year

puts "It's #{current_year}. you will retire in #{retirement_year}"
puts "You only have #{years_left} of work to go!"