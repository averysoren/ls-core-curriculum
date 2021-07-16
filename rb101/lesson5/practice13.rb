# practice13.rb

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

[[1, 8, 3], [1, 6, 7], [1, 4, 9]]

arr.sort_by do |sub_arr|
  sub_arr.select do |int|
    int.odd?
  end 
end

  