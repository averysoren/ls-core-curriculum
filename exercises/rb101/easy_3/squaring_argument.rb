# squaring_argument.rb

def multiply(num1, num2)
  num1 * num2
end

def square(num1)
  multiply(num1, num1)
end

def power(num, power)
  multiply(num, 1)**power
end

puts square(5) == 25
puts square(-8) == 64

puts power(3, 4)
puts power(8, 7)