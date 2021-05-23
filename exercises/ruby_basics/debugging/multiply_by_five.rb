# multiply_by_five.rb

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"

# This doesn't work because gets always returns a string, we need to call to_i on gets.chomp or when we pass number to the method.