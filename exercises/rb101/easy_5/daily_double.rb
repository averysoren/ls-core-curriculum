# daily_double.rb

# Write a method that takes a string argument and 
# returns a new string that contains the value of the 
# original string with all consecutive duplicate 
# characters collapsed into a single character. 
# You may not use String#squeeze or String#squeeze!.

# def crunch(str)
#   arr = str.chars
#   new_arr = []
  
#   arr.each { |char| new_arr << char unless new_arr.last == char }
#   new_arr.join()
# end

def crunch(str)
 str.gsub(/([\S])\1+/, '\1')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# gsub("([a-z])\\1+", "\\1", txt)