# easy1.rb
=begin

Question 1

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

This will print out:
1
2
2
3

Question 2

! is used when we want to say 'not', or it is found at the end of methods that
mutate the caller

? is used with ternary operators at the end of the condition, it is also found
at the end of methods that pose questions like odd? or even?, asking whether or
not the caller is odd or even.

1. != means not equal, it can be used in conditionals that base their actions off
    of two things not being equal, like if statements, or loops.

2. This would return the opposite of the boolean value of user_name, if it was
    true it will return false

3. This would cause the uniq method to mutate the caller instead of returning a
    new array

4. This would be a ternary operator and Ruby would expect two options afterward

5. 

6. Turns any value into a boolean

Question 3

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important", "urgent")

Question 4

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
numbers.delete(1)

delete_at will delete the index 1, or the integer 2 fromt he array
delete will delete any elements that are 1

Question 5

(10..100).cover?(42)

Question 6

famous_words = "seven years ago..."

famous_words.prepend("Four score and ")
famous_words.replace("Four score and seven years ago...")
"Four score and " + famous_words

Question 7

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]].flatten!

Question 8

flintstones = { "Fred" => 0, 
"Wilma" => 1,
"Barney" => 2,
"Betty" => 3,
"BamBam" => 4,
"Pebbles" => 5 }

flintstones.select! { |key, value| key == "Barney" }
flintstones = flintstones.to_a

=end