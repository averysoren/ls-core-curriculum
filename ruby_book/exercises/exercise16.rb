# exercise16.rb
=begin
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]     # We create this array because we need to iterate through this array so we can use the values to assign the information above to


contacts.each_with_index do |key, hash|   # We iterate over the contacts hash so we can gain access to the key and the hash we want to add new key-value pairs to
  fields.each do |field|                  # We iterate over the fields array so we can use the values in the array to make new key-value pairs in our empty hash
    hash[field] = contact_data.shift      # Since the empty hash is what we want to create the key-value pairs in, we use the hash variable and then use the syntax for adding
  end                                     # a new key-value pair, subbing the field variable in for our key name, and subbing contact_data.shift to our value, which returns the
end                                       # first element of the array, as well as removes it so in the next iteration the second element will be the first, and so on.

p contacts
=end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.each_with_index do |(key, hash), idx|    # I know that I will need the values 0 and 1 to pass to contact_data before the shift, so we use each_with_index to access the
  fields.each do |field|                          # indexes, since each_with_index usually only takes two items, we have to put () around key and hash
    hash[field] = contact_data[idx].shift         # here we use idx to create the key-value pairs, since idx will be 0 in the first iteration and 1 in the second, like we need
  end
end
  