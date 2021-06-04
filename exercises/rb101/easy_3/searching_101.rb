# searching_101.rb

def prompt(message)
  puts "==> #{message}"
end

numbers = []

prompt("Enter the 1st number:")
numbers << gets.chomp.to_i

prompt("Enter the 2nd number:")
numbers << gets.chomp.to_i

prompt("Enter the 3rd number:")
numbers << gets.chomp.to_i

prompt("Enter the 4th number:")
numbers << gets.chomp.to_i

prompt("Enter the 5th number:")
numbers << gets.chomp.to_i

prompt("Enter the 6th number:")
num6 = gets.chomp.to_i

puts numbers.include?(num6)

puts numbers.include?(num6) ? "The number #{num6} appears in #{numbers}." :
"The number #{num6} does not appear in #{numbers}."
