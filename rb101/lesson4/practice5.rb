# practice5.rb

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  p index if name.start_with?('Be')
end