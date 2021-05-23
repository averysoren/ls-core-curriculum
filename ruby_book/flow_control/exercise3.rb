puts "Give me a number between 0 and 100..."
num = gets.chomp.to_i

if num < 0
  puts "A negative number, really?"
elsif num <= 50
  puts "Your number is between 0 and 50!"
elsif num <= 100
  puts "You number is between 51 and 100"
else
  puts "Your number is greater than 100, are you kidding?"
end