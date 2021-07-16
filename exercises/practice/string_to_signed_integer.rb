# string_to_signed_integer.rb

NUMBERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, 
'7' => 7, '8' => 8, '9' => 9 }

def string_to_signed_integer(str)
  if str.chars.first == '-'
    numbers = str[1..-1].chars.map { |char| NUMBERS[char] }
    value = 0
    numbers.each { |digit| value = 10 * value + digit }
    -value
  elsif str.chars.first == '+'
    numbers = str[1..-1].chars.map { |char| NUMBERS[char] }
    value = 0
    numbers.each { |digit| value = 10 * value + digit }
    value
  else
    numbers = str.chars.map { |char| NUMBERS[char] }
    value = 0
    numbers.each { |digit| value = 10 * value + digit }
    value
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100