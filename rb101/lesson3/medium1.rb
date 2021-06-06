# medium1.rb

=begin

Question 1

10.times { |number| puts (" " * number) + " The Flintstones Rock!" }

Question 2

puts "the value of 40 + 2 is " + (40 + 2)

This results in an error because you're trying to add a string to an integer, we 
would either need to use string interpolation #{40 + 2} or use (40 + 2).to_s

Question 3

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

number % divisor == 0 Tells us to add the result of number / divisor to the factors
array only if it is perfectly divisible

factors on line 8 tells the method to explicily return the factors array before
it exits

Question 4

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

They will both output the same thing, except the first method will mutate the 
original array (buffer), while the second method creates a new array (buffer) from
the original array (input_array)

Question 5

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

This won't work because the limit variable cannot be accessed from within the
method definition. We would need to make limit a constant to be able to access
it from within the method definition, or initialize the variable inside the
method definition.

Or we could make limit an additionl argument to the method and call pass it in
when we call fib

Quetion 6

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

This will output 34 (42 -8)

Quetsion 7

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

Yes because the hash keys are being reassigned in the method, if he was to 
reassign a new variable to the demo_hash, he could then change the information
inside of that new hash, but this method never does that.

Question 8

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

The inside call results in paper and rock, than the next call on thos
two results in paper and rock, then that call results in paper

Paper is returned

Question 9

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

This will return "no", because we are passing the result of foo ("yes") to bar
which is asking if you passed ("no"), since we didn't it will print out 
the second option of the ternary statement which is ("no")

=end