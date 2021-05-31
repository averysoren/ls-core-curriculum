# mortgage_calculator.rb

# After reading the coding tips in the next lesson, I realized
# I probably should have only used the calculate_payment method
# to calculate and return the monthly_payment, and should have
# calculated and declared the monthly_interest and months variables
# inside the main code body.

def comma(num)
  num.to_s
     .chars()
     .reverse()
     .each_slice(3)
     .map(&:join)
     .join(",")
     .reverse()
end

def calculate_payment(total, apr, years)
  monthly_interest = apr.to_i / 100.to_f / 12
  months = years.to_i * 12

  monthly_payment = total.to_i * (monthly_interest /
  (1 - (1 + monthly_interest)**(-months)))

  puts "For a #{years} year loan of $#{comma(total)} with an annual
interest rate of #{apr}%, your monthly
payment would be $#{monthly_payment.round(2)}"
end

def prompt(message)
  puts("=> #{message}")
end

prompt("Welcome to the Mortgage Calculator!")

name = ''
loop do
  prompt("What's your name?")
  name = gets.chomp

  if name.empty?
    prompt("Please enter a valid name...")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  total = ''
  loop do
    prompt("How much would you like to borrow?")
    total = gets.chomp

    if total.empty?
      prompt("Please enter an amount...")
    elsif total.to_f < 0
      prompt("Please enter an amount greater than 0...")
    else
      break
    end
  end

  apr = ''
  loop do
    prompt("What annual interest rate would you like?(Ex: 5 for 5%)")
    apr = gets.chomp

    if apr.empty?
      prompt("Please enter an interest rate...")
    elsif apr.to_f < 0
      prompt("Please enter an interest rate greater than 0...")
    else
      break
    end
  end

  years = ''
  loop do
    prompt("How long (in years) would you like to payoff the loan?")
    years = gets.chomp

    if years.empty?
      prompt("Please enter a term in years...")
    elsif years.to_i < 1
      prompt("Must be at least 1 year...")
    else
      break
    end
  end

  calculate_payment(total, apr, years)

  prompt("Would you to calculate a different loan?")
  different = gets.chomp

  if different.downcase.start_with?("y")
    next
  else
    prompt("Goodbye #{name}!")
  end
  break
end
