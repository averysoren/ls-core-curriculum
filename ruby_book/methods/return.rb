# Here we're saving the returned value of the add_three method invocation in a variable called returned_value. 
# Then we print returned_value to the output to see what it has inside it.
# Your output should print 7 because that's what them ethod call returned.

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value


# If you wanted to explicitly return a value, you can use the return keyword
# Our output will still be the same as above, we just told the method to explicitly return the value instead of allowing it do so implicitly

def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value


#This program below will still output 7, the number you told it to return.
# It will not execute the the last expression in this case because you have explicitly told it to return something else before that line
# When you place a return in the middle of the code, the method will end after the return statement

def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value
