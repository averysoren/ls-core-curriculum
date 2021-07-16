[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]

# What's happening in this, seemingly simple, piece of code? 
# Take it apart and try to describe every interaction with precision.

# The Array#each method is being called on a multi-dimensional array. A 
# block is being passed to the method where the placeholder arr is being 
# used to represent the current element at that iteration. The 
# Kernel#puts method is then being used in conjunction with Array#first 
# to print out the first element of each sub-array. Finally since #each 
# always returns self, the multi-dimensional array on which #each was
# called is returned

# What specific pieces of information are we interested in 
# keeping track of? When evaluating code like this, ask the 
# following questions:

# - What is the type of action being performed (method call, 
# block, conditional, etc..)?
# - What is the object that action is being performed on?
# - What is the side-effect of that action (e.g. output or 
# destructive action)?
# - What is the return value of that action?
# - Is the return value used by whatever instigated the action?