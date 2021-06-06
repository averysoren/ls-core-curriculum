# hard1.rb

=begin

Question 1

Nothing will happen since greeting is nil because it was initilized inside of an if
statement

Question 2

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

{a:=>"hi there"}

This is because informal_greeting points to the same object that greetings[:a]
does, and we mutated that object with << ' there'

Question 3

A - one is: one
    two is: two
    three is: three
    
B - one is: one
    two is: two
    three is: three
    
C - one is: two
    two is: three
    three is: one
    
Question 4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
    
    true
end

=end