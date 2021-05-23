# print_while.rb

numbers = []

while numbers.length < 5
  numbers.push(rand(100))   # Could have used the shovel operation numbers << rand(100)
end

puts numbers 