# how_big_is_the_room?.rb

=begin

puts "What is the length of the room? (in meters)"
length = gets.chomp.to_f

puts "What is the width of the room? (in meters)"
width = gets.chomp.to_f

square_meters = length * width
square_feet = (square_meters * 10.7639).round(2)

puts "The area of the room is #{square_meters} square meters" + \
"(#{square_feet} square feet)."

=end
# Further Exploration

SQFEET_TO_SQINCHES = 144
SQINCHES_TO_SQCENT = 6.4516

puts "What is the length of the room? (in feet)"
length = gets.chomp.to_f

puts "What is the width of the room? (in feet)"
width = gets.chomp.to_f

square_feet = length * width
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_cent = (square_inches * SQINCHES_TO_SQCENT).round(2)

puts "The area of the room is #{square_feet} square feet " \
"(#{square_inches} square inches, #{square_cent} square centimeters)."
