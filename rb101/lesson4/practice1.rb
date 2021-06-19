# practice1.rb

hash = {}

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_index do |name, index|
  hash[name] = index
end
  
p hash