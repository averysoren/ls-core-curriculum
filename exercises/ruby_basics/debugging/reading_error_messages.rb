# reading_error_messages.rb

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

#find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)

# The first example will have an error about the wrong number of arguments, the method only expects one and we give 6

# The second example will have an error becauses each is not a method of integer. 