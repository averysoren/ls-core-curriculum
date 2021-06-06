# short_long_short.rb

# Write a method that takes two strings as arguments, 
#determines the longest of the two strings, and then 
#returns the result of concatenating the shorter string, 
#the longer string, and the shorter string once again. 
#You may assume that the strings are of different lengths.

def short_long_short(str1, str2)
  if str1.size < str2.size
    str1 + str2 + str1
  else
    str2 + str1 + str2
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"

# We could have also made a new array to store the strings in, and then
# used sort_by! to sort by size and then use #concat (+) to add the
# subarrays together