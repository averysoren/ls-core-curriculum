# only_even.rb

number = 0

until number == 10
  number += 1
  next unless number.even?      # Could have used next if number.odd?
  puts number
end