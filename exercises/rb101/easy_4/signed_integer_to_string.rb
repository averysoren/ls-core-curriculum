# signed_integer_to_string.rb

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(int)
  if int.positive?
    integer_to_string(int.abs).prepend('+')
  elsif int.negative?
    integer_to_string(int.abs).prepend('-')
  else
    integer_to_string(int)
  end
end

# Further Exploration

def signed_integer_to_string(int)
  return '0' if int == 0
  sign = int.positive? ? '+' : '-'
  integer_to_string(int.abs).prepend(sign)
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'