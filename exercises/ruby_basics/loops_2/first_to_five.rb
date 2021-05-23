# first_to_five.rb

number_a = 0
number_b = 0

=begin
loop do
  number_a += rand(2)
  number_b += rand(2)

  next unless number_a == 5 || number_b == 5
    puts "5 was reached!"
  break
end
=end

loop do                           # This can also be done with an if statement
  number_a += rand(2)
  number_b += rand(2)
  
  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end