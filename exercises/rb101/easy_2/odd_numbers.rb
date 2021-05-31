# odd_numbers.rb

numbers = Array(1..99)

# puts numbers.select { |num| num.odd? }

# Further Exploration

numbers.each { |num| puts num if num % 2 != 0 }