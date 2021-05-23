# weather_forecast.rb

def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

# if sunshine will always be true because it is assigned to a string object, and string objects are truthy, we should assign sunshine to the boolean true or false