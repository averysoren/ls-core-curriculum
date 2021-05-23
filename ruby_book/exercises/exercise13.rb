# exercise13.rb

arr = ["snow", "winter", "ice", "slippery", "salted roads", "white trees"]

arr.delete_if do |word| 
  word.start_with?("s")
end 

puts arr

arr = ["snow", "winter", "ice", "slippery", "salted roads", "white trees"]

arr.delete_if do |word|
  word.start_with?("s") || word.start_with?("w")  # This can be refactored into word.start_with?("s", "w")
end

puts "-------"
puts arr