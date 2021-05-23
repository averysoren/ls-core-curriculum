# multiply_the_sum.rb

def add(num1, num2)
  num1.to_int + num2.to_int
end

def multiply(num1, num2)
  num1.to_int * num2.to_int
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36