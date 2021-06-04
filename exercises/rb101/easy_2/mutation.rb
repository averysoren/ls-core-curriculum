# mutation.rb

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

This is because you with the last #each method, we are mutating the objects that
the elements in array2 point to

=end
