# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
          " years old and I live in #{options[:city]}."
    end
  end
  
  greeting("Bob")
  greeting("Bob", {age: 62, city: "New York City"})
  greeting("Bob", age: 62, city: "New York City")       # You don't have to use curly braces when a hash is the last argument, you can just set the key-value pairs without the