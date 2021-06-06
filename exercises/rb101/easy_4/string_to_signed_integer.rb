# string_to_signed_integer.rb

HASH = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
          '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(str)
  ints = str.chars.map { |char| HASH[char] }.tap { |x| p x }
  
  ints.inject { |accum, int| 10 * accum + int }
end
=begin
def string_to_signed_integer(str)
  if str.start_with?('-')
    string_to_integer(str.delete!('-')) * -1
  elsif str.start_with?('+')
    string_to_integer(str.delete!('+'))
  else
    string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
=end

# Further Exploration

def string_to_signed_integer(str)
  sign = str[0] == '-' ? -1 : 1
  str.delete!('-+')
  string_to_integer(str) * sign
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100