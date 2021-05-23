# exercise3.rb

def countdown(num)
  puts num
  if num > 0
    countdown(num - 1)
  end
end

countdown(7)
countdown(0)
countdown(-1)