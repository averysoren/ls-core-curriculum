# confucius_says.rb

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# We either need one if/else statement or explicit return values because get_quote will always return the last line, which is an if statement
# If an if statement evaluates to false it will return nil which is where the error comes from unless Einstein is passed