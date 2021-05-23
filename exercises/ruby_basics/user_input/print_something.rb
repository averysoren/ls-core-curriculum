# print_something

# Part 1
=begin

puts "Do you want me to print something? (y/n)"
input = gets.chomp.downcase                     # added downcase in case the user enters a capital Y
puts "something" if input == 'y'

=end

# Part 2

=begin

loop do 
  puts "Do you want me to print something? (y/n)"
  input = gets.chomp.downcase
  
  if input == "y"
    puts "something"
    break
  elsif input == "n"
    break
  end
  
  puts "Invalid input! please select y or n"
end

=end

# Trying it the way described in the video after I watched it

input = nil       # need input declared outside of the loop so it can be accessed on the last line.

loop do
  puts ">> Do you want me to print something? (y, n)"
  input = gets.chomp.downcase
    
  break if %w(y n).include?(input)              # this is basically creating a placeholder array on the spot so it can check if input is included.
  puts ">> Invalid input! please select y or n"
end

puts "something" if input == "y"
    

  