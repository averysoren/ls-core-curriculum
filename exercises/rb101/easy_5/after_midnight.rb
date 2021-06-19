# after_midnight.rb

# Part 1

# The time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight. If the number of 
# minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time 
# of day in 24 hour format (hh:mm). Your method should work with any integer input.

# def time_of_day(int)
#   total_hours = int / 60
#   hours = total_hours % 24
  
#   minutes = int % 60
  
#   format("%02d:%02d", hours, minutes)
# end  

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"

# Further Exploration

#1

# def normalize_minutes_to_0_through_1439(minutes)
#   minutes % MINUTES_PER_DAY
# end

# Part 2

def after_midnight(str)
  hours, minutes = str.split(":").map(&:to_i)
  
  hours < 24 ? (hours * 60) + minutes : 0
end

def before_midnight(str)
  hours, minutes = str.split(":").map(&:to_i)
  
  hours < 24 ? (hours * 60) - minutes : 0
end 

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
