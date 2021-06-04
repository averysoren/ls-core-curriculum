# arithmetic_integer.rb
def addition(int1, int2)
  puts "==> #{int1} + #{int2} = #{int1 + int2}"
end

def subtraction(int1, int2)
  puts "==> #{int1} - #{int2} = #{int1 - int2}"
end

def product(int1, int2)
  puts "==> #{int1} x #{int2} = #{int1 * int2}"
end

def quotient(int1, int2)
  puts "==> #{int1} / #{int2} = #{int1 / int2}"
end

def remainder(int1, int2)
  puts "==> #{int1} % #{int2} = #{int1 % int2}"
end

def power(int1, int2)
  puts "==> #{int1} ** #{int2} = #{int1 ** int2}"
end


puts "==> Enter the first number:"
num1 = gets.chomp.to_i

puts "==> Enter the second number:"
num2 = gets.chomp.to_i

addition(num1, num2)
subtraction(num1, num2)
product(num1, num2)
quotient(num1, num2)
remainder(num1, num2)
power(num1, num2)