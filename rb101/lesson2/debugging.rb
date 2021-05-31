# debugging.rb

=begin

(1..10)                 .tap { |x| p x }   # 1..10
 .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
 .map {|x| x*x }        .tap { |x| p x }   # [4, 16, 36, 64, 100]
 
=end

=begin

array = [1,2,3]
 
mapped_array = p array.map do |num|
  num + 1
end 

mapped_array.tap { |value| p 'hello' }

p mapped_array

=end

(1..10)                .tap {|x| puts "original: #{x.inspect}"}
  .to_a                .tap {|x| puts "array: #{x.inspect}"}
  .select {|x| x%2==0} .tap {|x| puts "evens: #{x.inspect}"}
  .map {|x| x*x}       .tap {|x| puts "squares: #{x.inspect}"}