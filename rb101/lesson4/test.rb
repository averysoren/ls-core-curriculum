def duplicate_count(text)
    arr = text.chars
    
    hash = arr.uniq.map { |char| [char, arr.count(char)]}.to_h
    
    hash.values.select { |num| num > 1 }.count
end

p duplicate_count("aabBcde")