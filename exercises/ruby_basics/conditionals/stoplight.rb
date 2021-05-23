# stoplight.rb

# Part 1

=begin

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when "green" 
    puts "Go!"
  when "yellow" 
    puts "Slow down!"
  when "red" 
    puts "Stop!"
end

=end

# Part 2

=begin

stoplight = ['green', 'yellow', 'red'].sample

if stoplight == "green"
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

=end

# Part 3

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when 'green' then puts 'Go!' 
   when 'yellow' then puts 'Slow down!'
else; puts 'Stop!'
end