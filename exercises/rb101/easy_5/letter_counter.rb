# letter_counter.rb

# def word_sizes(str)
#   hash = {}
#   elements = str.split.map do |word|
#     word.size
#   end
  
#   elements.sort!.each do |key|
#     hash[key] = elements.count(key)
#   end
  
#   p hash
# end


# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

# Part 2

def word_sizes(str)
  hash = {}
  str.gsub!(/[^a-z ]/i, '')
  elements = str.split.map do |word|
    word.size
  end
  
  elements.sort!.each do |key|
    hash[key] = elements.count(key)
  end
  
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}