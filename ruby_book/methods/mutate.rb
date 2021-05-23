a = [1, 2, 3]

# Example of a method definition that modifies its arugment permanently
=begin
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"


# Example of a method definition that doese not mutate the caller but still returns the same value
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"
=end

# Put vs Return: the sequel
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"