# letter_swap.rb


def swap(str)
  str_arr = []
  arr = str.split
  
  arr.map do |word|
    words = word.chars
    words[0], words[-1] = words[-1], words[0]
    str_arr << words.join
  end
  
  str_arr.join(" ")
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'