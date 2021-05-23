# exercise2.rb

# The difference between merge and merge! is that merge is not destructive and will not mutate the original hash, instead it returns a new hash merge! will mutate the original hash

person = {name: "Bob", age: 22, height: "6ft"}
new_hash = {weight: "185 lbs"}

puts person
puts new_hash
person.merge(new_hash)
puts person
person.merge!(new_hash)
puts person
