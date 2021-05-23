# username_password.rb

UNAME = "soren"
PWORD = "iloveyou"

loop do
  puts ">> Please enter your username:"
  username = gets.chomp.downcase
  
  puts ">> Please enter your password:"
  password = gets.chomp
  
  break if password == PWORD && username == UNAME    
  puts "Authorization failed!"
end

puts "Welcome!"