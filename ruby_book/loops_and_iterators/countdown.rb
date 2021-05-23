# countdown.rb

x = gets.chomp.to_i     # This will make the program wait for input from the user

while x >= 0            # Assuming the input number is greater than 0, the rest will execute
  puts x                # prints x to the screen
  x -= 1             # Subtracts 1 from x and stores the new value in x
end

puts "Done!"            # Once x is less than 0, it skips the execution of the loop (printing x to the screen, and subtracting 1 from x) and prints "Done!" to the screen.

=begin

The above program can be written with an until loop:

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"

=end