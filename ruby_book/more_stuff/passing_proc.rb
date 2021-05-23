# passing_proc.rb

def take_proc(proc)
  [1,2,3,4,5].each do |number|
    proc.call number            # This represents the puts line below, which will be printed 5 times because of the each method above, substituting in the values from the array
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)