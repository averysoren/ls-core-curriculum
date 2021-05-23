# launch_school_printer.rb
=begin

loop do 
  puts "How many output lines do you want? Enter a number >= 3:"
  lines = gets.chomp.to_i

    if lines >= 3
      lines.times do
        puts "Launch school is the best!"
      end
    
      break
  
    else
      puts "That's not enough lines."
    end
end

=end

# The solution provided
=begin

number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end

=end

# Part 2

number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
  number_of_lines = gets.chomp
  
  break if number_of_lines.downcase == "q"
  
  number_of_lines = number_of_lines.to_i
  next (puts ">> That's not enough lines.") if number_of_lines < 3

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end