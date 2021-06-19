# practice7.rb

hash = {}

 statement = "The Flintstones Rock"

statement.delete(' ').each_char do |letter|
  hash[letter] = statement.count(letter)
end

p hash
