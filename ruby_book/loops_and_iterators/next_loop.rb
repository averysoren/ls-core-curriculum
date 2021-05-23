# next_loop.rb

i = 0
loop do
  i += 2
  if i == 4        # i adds 2 to it's value every iteration, then prints i. Once it reaches 4, it skips the rest of the code (including printing i) and goes to the next iteration.
    next
  end
  puts i
  if i == 10
    break
  end
end