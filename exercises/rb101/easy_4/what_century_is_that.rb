# what_century_is_that.rb

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

=begin
def century(year)
  year4 = year.to_s.rjust(4, '0') if year.to_s.size < 4
  str = ''
  
  if year4.slice(1..3).to_i <= 100
    str << '1st'
  elsif year4.slice(1..3).to_i > 100 && year4.slice(1..3).to_i < 201
    str << '2nd'
  elsif year4.slice(1..3).to_i > 200 && year4.slice(1..3).to_i < 301
    str << '3rd'
  elsif year4.slice(1..3).to_i > 300 && year4.slice(0..3).to_i < 1001
    str << (year4[1].to_i + 1).to_s + 'th'
  elsif year4.slice(0..3).to_i > 1000 && year4.slice(0..-1)
    if year4.size < 5
      str << (year4[0..1].to_i).to_s + 
  return str
end

def century(year)
  if year < 100
    return '1st'
  elsif year > 100 && year <= 200
    return '2nd'
  elsif year > 200 && year <= 300
    return '3rd'
  elsif year > 300 && year <= 400
    return '4th'
  elsif year > 400 && year <= 500
    return '5th'
  elsif year > 500 && year <= 600
    return '6th'
  elsif year > 600 && year <= 700
    return '7th'
  elsif year > 700 && year <= 800
    return '8th'
  elsif year > 800 && year <= 900
    return '9th'
  elsif year > 900 && year <= 1000
    return '10th'
  elsif 
=end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'