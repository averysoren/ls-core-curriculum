# reverse_it.rb

# Part 1
=begin

def reverse_sentence(str)
  str.split(" ").reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

=end

# Part 2

def reverse_words(str)
  reversed = str.split(" ")
  reversed.each do |word|
    word.reverse! if word.length >= 5
  end
  
  reversed.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS