# odd_lists.rb

def oddities(array)
  array.reject!.with_index { |element, index| index.odd? }
  array
end

=begin
def oddities(array)
  array.delete_if.with_index { |element, index| index.odd? }
end
=end  

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
