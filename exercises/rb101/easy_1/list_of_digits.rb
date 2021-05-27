# list_of_digits.rb

def digit_list(int)
  int.to_s.split("").map { |i| i.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]