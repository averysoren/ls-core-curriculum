# century.rb second try timed 9:31 - 10:42

# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 
# comprise the 20th century.

# def century(year)
#   if year < 101 
#     century = 1
#   elsif year.to_s.chars.last(2).join.to_i == 00
#     century = year.to_s[0...-2]
#   else
#     century = year.to_s[0...-2].to_i + 1
#   end
  
#   if century.to_s.chars.last(2).join.to_i.between?(11, 13)
#     ending = century.to_s.chars.last(2).join.to_i
#   else
#     ending = century.to_s.chars.last.to_i
#   end
  
#   p ending
  
#   case ending
#     when (11..13)
#     ending_letters = 'th'
#     when 1
#     ending_letters = 'st'
#     when 2
#     ending_letters = 'nd'
#     when 3
#     ending_letters = 'rd'
#     else
#     ending_letters = 'th'
#   end
  
#   # p ending_letters
#   p "#{century.to_s}#{ending_letters}"
# end


def suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10
  
  case last_digit
  when 0 then 'th'
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

def century(year)
  century = (year / 100) + 1
  
  century -= 1 if year % 10 == 0
  
  p century.to_s + suffix(century)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'