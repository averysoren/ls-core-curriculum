# inline_exception_example.rb

zero = 0
puts "Before each call"
zero.each { |element| puts element } rescure puts "Can't do that!"    # You can't call each on an integer, so the rescue block will be executed and then it will move on.
puts "After each call"

