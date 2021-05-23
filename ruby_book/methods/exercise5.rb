def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

# This will still return nil since puts words is the last expression in the method and puts words implicitly returns nil