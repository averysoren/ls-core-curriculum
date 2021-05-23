# warriors_wizards.rb

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge!(character_classes[input.to_sym])      # character_classes expects a symbol for it's key and merge without ! only returns a copy so when we puts player below
                                                    # we are just printing the original array. We need to assign this line to another variable and puts that below or use merge!
puts 'Your character stats:'
puts player