# exercise14.rb

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     

a = a.map do |words|
  words.split(" ")    # split makes an array of sub-arrays, the sub-arrays are made up of the result of the split 
end

a.flatten!      # This will take that array of sub-arrays and flatten them all into a one dimensional array
    
p a             # Used p instead of puts because it will actually show the array, not just print to the screen