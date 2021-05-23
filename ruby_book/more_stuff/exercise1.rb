# exercise1.rb

def has_lab?(string)
  if string =~ /lab/
    puts string
  else
    puts "Not this one"
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labrinth")
has_lab?("elaborate")
has_lab?("polar bear")