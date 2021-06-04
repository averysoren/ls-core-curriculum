# sum_or_product.rb

def prompt(message)
 puts "=> #{message}"
end

def sum(array)
  array.sum
end

def product(array)
  array.reduce(:*)
end  

prompt("Please enter an integer greater than 0")
number = gets.chomp.to_i

numbers = Array(1..number)

prompt("Enter 's' to compute sum, 'p' to compute product")
choice = gets.chomp

if choice == 's'
  prompt("The sum of the integers between 1 and #{number} "\
  "is #{sum(numbers)}")
else
  prompt("The product of the intergers between 1 "\
  "and #{number} is #{product(numbers)}")
end



