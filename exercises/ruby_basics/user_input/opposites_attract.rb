# opposites_attract.rb

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

int1 = nil
int2 = nil

loop do
  loop do
    puts ">> Please enter a positive or negative integer:"
    int1 = gets.chomp
    break if valid_number?(int1)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end

  loop do
    puts ">> Please enter a positive or negative integer:"
    int2 = gets.chomp
    break if valid_number?(int2)
    puts ">> Invalid input. Only non-zero integers are allowed."
  end
  
  break if int1.to_i.positive? && int2.to_i.negative? || int1.to_i.negative? && int2.to_i.positive?
  puts ">> Sorry, one integer must be positive, and one negative."
  puts ">> Please start over."
end

result = int1.to_i + int2.to_i
puts "#{int1} + #{int2} = #{result}"