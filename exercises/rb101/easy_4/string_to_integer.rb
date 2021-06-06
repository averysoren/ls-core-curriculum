# string_to_integer.rb

HASH = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
          '6' => 6, '7' => 7, '8' => 8, '9' => 9 }


=begin
def string_to_integer(str)
  ints = str.chars.map { |char| NUM_HASH[char] }
  
  accum = 0
  ints.each { |int| accum = 10 * accum + int }
  accum
end
=end

def string_to_integer(str)
  ints = str.chars.map { |char| HASH[char] }.tap { |x| p x }
  
  ints.inject { |accum, int| 10 * accum + int }
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('1548766841') == 1548766841