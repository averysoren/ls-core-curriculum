# tip_calculator.rb

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the percentage?"
percentage = gets.chomp.to_f / 100

tip = bill * percentage
total = bill + tip

puts "The tip is $#{'%.2f' % tip}"
puts "The total is $#{'%.2f' % total}"