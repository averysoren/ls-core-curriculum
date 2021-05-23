# insert_numbers.rb

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input            # You could also use the push method
  break if numbers.size == 5
end
puts numbers