# practice16.rb

def uuid()
  "#{Array.new(8){[*"a".."z", *"0".."9"].sample}.join}-" +
  "#{Array.new(4){[*"a".."z", *"0".."9"].sample}.join}-" +
  "#{Array.new(4){[*"a".."z", *"0".."9"].sample}.join}-" +
  "#{Array.new(4){[*"a".."z", *"0".."9"].sample}.join}-" +
  "#{Array.new(12){[*"a".."z", *"0".."9"].sample}.join}"
end

p uuid