# passwords.rb

PWORD = "iloveyou"

loop do
  puts ">> Please enter your password:"
  password = gets.chomp
  
  break if password == PWORD    # If this condition isn't met, it will move on to the next line and then the next iteration
  puts ">> Invalid password!"
end

puts "Welcome!"         # We can simply put this after the loop because it will only be printed once, when the password is entered correctly