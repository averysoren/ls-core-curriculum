# divided_by_two.rb

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map do |label, number|
  number / 2
end

p half_numbers