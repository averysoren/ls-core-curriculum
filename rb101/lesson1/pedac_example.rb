# pedac_example

# Trying to create the code on my own based on the algorithm provided

# UNDERSTOOD AFTER WRITING WHY THIS SHOULD ALL BE WRITTEN INSIDE OF A METHOD DEFINITION, SO IT CAN BE CALLED WITH THE TARGET AND FACTOR ARGUMENTS.

def sum_of_multiples(target, factors)

# 1. Create an empty array called multiples

multiples = []

# 2. Check where the list of factors is empty, and if it is, set the list to [3, 5]

if factors.empty?
    factors = [3, 5]
end

# 3. For every factor in the factors list
#       1. Set the current_multiple to factor to keep track of the multiples of factor
#       2. While current_multiple < targe
#           1. Append the current_multiple to multiples
#           2. Add factor to current_multiple

factors.each do |factor|
    current_multiple = factor
    
    while current_multiple < target
        multiples.push(current_multiple)
        current_multiple += factor
    end
end

# 4. Filter duplicate numebrs from multiples

multiples.uniq!

# 5. Compute and return the sum of the numbers in multiples

p multiples.sum

end

sum_of_multiples(20, [3,5])
sum_of_multiples(20, [3])
sum_of_multiples(20, [5])
sum_of_multiples(20, [])
sum_of_multiples(1, [])
sum_of_multiples(20, [19])