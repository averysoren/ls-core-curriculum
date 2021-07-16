# practice8.rb

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# My way

hsh.each do |_, value|
  value.join.chars.each do |char|
    puts char if char.match(/[aeiou]/)
  end
end


# The way the solution did it

# vowels = 'aeiou'

# hsh.each do |_, value|
#   value.each do |str|
#     str.chars.each do |char|
#       puts char if vowels.include?(char)
#     end
#   end
# end
