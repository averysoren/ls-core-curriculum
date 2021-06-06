# multisum.rb

# How I did it on my own
=begin
def multisum(num)
  mult3 = num / 3
  mult5 = num / 5
  
  array3 = []
  array5 = []
  count3 = 3
  count5 = 5
  
  mult3.times do 
    array3 << count3
    count3 += 3
  end
  
  mult5.times do
    array5 << count5
    count5 += 5
  end
  
  array3.concat(array5).uniq.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
=end

# How the solution did it
=begin
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end
=end

# Further Exploration

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  1.upto(max_value).select { |number| multiple?(number, 3) || multiple?(number, 5) }
  .inject(:+)
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168