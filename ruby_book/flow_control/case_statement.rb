# case_statement.rb

a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else 
  puts "a is neither 5, nor 6"
end

# The case is named after the variable you are saying when to, think of it like this: a when 5 puts "a is 5", a when 6 puts "a is 6"
# You can also right the case conditions in one line by adding the keyword then, like this: when 5 then puts "a is 5"

# The above case statement is the same as writing the if/else statement below

=begin

a = 5

if a == 5
  puts "a is 5"
elsif a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

=end

# The original case statement above is the same as below, where we store the result of a case statement into a variable
# This way saves us from writing puts so many times and only has us write it once at the end of the code

=begin

a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end
  
puts answer