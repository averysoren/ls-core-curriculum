# proc_example.rb

=begin

talk = Proc.new do
  puts "I am talking."
end

talk.call     # This is how he call the proc we made above

=end

talk = Proc.new do |name|         # This is how a proc would take an argument, specified inside of ||
  puts "I am talking to #{name}"
end

talk.call "Bob"                   # This is how you would pass the argument when calling the proc.