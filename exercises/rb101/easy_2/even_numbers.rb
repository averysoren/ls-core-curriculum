# even_numbers.rb

numbers = Array(1..99)

puts numbers.select { |num| num.even? }

# Further Exploration

# numbers.each { |num| puts num if num % 2 == 0 }