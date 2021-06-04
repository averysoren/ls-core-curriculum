# palindromic_strings.rb

# Part 1
=begin
def palindrome?(str)
  str.reverse == str
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true


# Further Exploration

def palindrome?(string_or_array)
  string_or_array.reverse == string_or_array
end

puts palindrome?(['abc', 123, 'abc']) == true
puts palindrome?("madam i'm adam") == false
=end

# part 2

def palindrome?(str)
  str.reverse == str
end

def real_palindrome?(str)
  str = str.downcase.delete('^a-z0-9')
   palindrome?(str)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false