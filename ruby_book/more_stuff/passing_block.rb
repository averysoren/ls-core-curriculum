# passing_block.rb

=begin

def take_block(&block)    # & tells the method that the parameter is a block, we can use whatever after the &
  block.call              # this will be replaced with the block
end

take_block do   
  puts "Block being called in the method!"    # We can specify the block at the time of calling the method, with do/end 
end

=end

def take_block(number, &block)    # We are passing a argument and a block to this method
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"     # 
end