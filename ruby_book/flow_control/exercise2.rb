def all_caps(str)
  if str.length > 10
    str.upcase
  else
    str
  end
end

puts all_caps("I can't think of anything to put")
puts all_caps("Something")