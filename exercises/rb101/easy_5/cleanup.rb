# cleanup.rb

def cleanup(str)
  p str.gsub(/[^a-z]/, ' ').squeeze
end


p cleanup("---what's my +*& line?") == ' what s my line '
