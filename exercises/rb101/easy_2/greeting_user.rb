# greeting_user.rb

=begin

print "What is your name? "
name = gets.chomp

if name.end_with?("!")
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{name}."
end

=end

# Further Exploration

print "What is your name? "
name = gets.chomp

if name.end_with?("!")
  puts "HELLO #{name.chomp("!").upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{name}."
end