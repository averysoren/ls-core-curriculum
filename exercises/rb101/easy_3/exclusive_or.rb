# exlusive_or.rb

def xor?(arg1, arg2)
  if arg1 && !arg2
    return true
  elsif !arg1 && arg2
    return true
  else
    return false
  end
end
  

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false