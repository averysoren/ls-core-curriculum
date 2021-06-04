# string_assignment.rb

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin

This code will print out BOB! for both puts statements

This is because name and save_name both point to the same object in the memory space
and the #upcase! method mutates that object, so after this method call, both of the 
variables still point to the same object, the object has just been mutated

=end

