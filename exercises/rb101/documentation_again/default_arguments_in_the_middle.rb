# default_arguments_in_the_middle.rb

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# This will print [4, 5, 3, 6] since Ruby will use the first argument for a, the second argument for b, the third argument will use it's default argument, and the fourth
# argument will use 6.