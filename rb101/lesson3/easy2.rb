# easy2.rb

=begin

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

Question 1

ages.key?("Spot")
ages.has_key?("Spot")
ages.member("Spot")
ages.include?("Spot")

Question 2

munsters_description = "The Munsters are creepy in a good way."

"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
"The munsters are creepy in a good way."
"the munsters are creepy in a good way."
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!

Question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

Question 4

advice = "Few things in life are as important as house training your pet dinosaur."

advice.match?("Dino")

Question 5

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

Question 6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"

Question 7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

Question 8

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice(0..38)

If you use the #slice method instead, it will return the portion removed
but the original string will remain the same.

Question 9

statement = "The Flintstones Rock!"

statement.count('t')

Question 10

title = "Flintstone Family Members"

title.center(40)


