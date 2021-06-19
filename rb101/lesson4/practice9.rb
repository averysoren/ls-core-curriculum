# practice9.rb

words = "the flintstones rock"

def titleize(str)
  str = str.split(' ').map do |word|
    word.capitalize!
  end
  
  str.join(' ')
end

p titleize(words)