# digit_product.rb

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

# digit_product starts out by assigning 0 to product, then you multiply product by each digit but 0 * anything is 0