#practice8.rb

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# Apparently this will only iterate twice, removing the first element twice. Leaving 
# [3, 4] since each compares itself to the modified array which will have a length of 2
# after 2 iterations, it thinks that it is done iterating, instead of iterating 2 more
# times. Do not modify collections while iterating through it.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# The same thing will happen here, except the last 2 elements will be removed