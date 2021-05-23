# dividing_numbers.rb

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

n = nil
d = nil

loop do
  puts ">> Please enter the numerator:"
  n = gets.chomp
  next(puts "Invalid input, only integers are allowed") unless valid_number?(n)     # Remembered that I can pass a value to next that will be the value
  break                                                                             # returned for the current iteration
end

loop do
  puts ">> Please enter the denominator:"
  d = gets.chomp
  next(puts "Invalid input, only integers are allowed") unless valid_number?(d)
  break
end

puts "#{n} / #{d} is #{n.to_i / d.to_i}"