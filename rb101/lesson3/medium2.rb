# medium2.rb

=begin

Question 1

a_outer = 22
b_outer = "thirty three"
c_outer = [44]
d_outer = c_outer[0]

All of the above reassignments change the object ids, they aren't changed anywhere
else in the program

Question 2



Question 3

my_string is still going to represent "pumpkins" because you cannot reassign a
variable initialized outside of a method from within a method, the method only
reassigns the a_string_param to  a new object "pumpkinsrutabaga"

my_array will change and have an additional element "rutabaga" because we are
mutating the array with << instead of trying to reassign it

Question 4

This will do the opposite because we are mutating the string object and trying to
reassign the array object, you cannot reassign a variable initialized outside of 
a method from within the method, you can only mutate them

Question 5

We could change the code inside the method to += for both arguments, return both
of the new variables after reassignment. Then we could set the outer variables 
equal to the result of the method call, which essentially sets them equal to the
new objects the variables inside the method points to.

Question 6

def color_valid(color)
  color == "blue" || color == "green"
end

The statements will be automatically evaluated to true or false, so we don't need
the if statement or the explicit returns of true or false

=end