# stringy_strings.rb

def stringy(int, integer = 1)
  arr = []
  
  if integer == 0
    int.times do |index|
      number = index.even? ? 0 : 1
      arr << number
    end
  else
    int.times do |index|
      number = index.even? ? 1 : 0
      arr << number
    end
  end
  arr.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) == '010101'