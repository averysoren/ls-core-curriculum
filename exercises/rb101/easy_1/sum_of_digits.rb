# sum_of_digits.rb

=begin

def sum(int)
  numbers = []
  nums = int.to_s.split("").each do |number|
    numbers << number.to_i
  end
  numbers.sum 
end

=end

# Challenge, I made this work but I used .times since it didn't specify we couldn't use that one. I would have used .map but I considered it to be just like .each

=begin

def sum(int)
  numbers = []
  nums = int.to_s.split("")
  
  count = nums.count
  i = 0
  count.times do 
    numbers << nums[i].to_i
    i += 1
  end
  numbers.sum
end

=end

# Learned a new method .digits that would have worked nicely for this.

def sum(int)
  int.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45