# practice10.rb

 [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  inc_hash = {}
  hash.each do |key, value|
    inc_hash[key] = value + 1
  end
  inc_hash
end