# bannerizer.rb

def print_in_box(str)
  if str.empty?
    puts "+--+"
    puts "|  |"
    puts "|  |"
    puts "|  |"
    puts "+--+"
  else 
    puts "+-".ljust(str.size + 2, '-') + "-+"
    puts "|".ljust(str.size + 2, ' ') + " |"
    puts "| " + str + " |"
    puts "|".ljust(str.size + 2, ' ') + " |"
    puts "+-".ljust(str.size + 2, '-') + "-+"
  end
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+