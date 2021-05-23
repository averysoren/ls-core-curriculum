# get_the_sum.rb

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That is correct"
    break
  else
    puts "Wrong answer. Try again!"       # We don't need to have this in the if/else statement, since it would be the default unless answer == 4
  end
end     