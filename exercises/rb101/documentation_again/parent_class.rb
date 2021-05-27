s = 'abc'
puts s.public_methods.inspect

# If we change this to s.public_methods(false).inspect it will only show us the methods that are directly available to the String class, not it's parent classes.