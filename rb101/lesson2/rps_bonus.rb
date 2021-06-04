VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

moves = {rock: ['scissors', 'lizard'],
          paper: ['rock', 'spock'],
          scissors: ['paper', 'lizard'],
          lizard: ['paper', 'spock'],
          spock: ['rock', 'scissors']
}

def win?(first, second)
  first == 'rock' && (second == 'scissors' || second == 'lizard') ||
    first == 'paper' && (second == 'rock' || second == 'spock') ||
    first == 'scissors' && (second == 'paper' || second == 'lizard') ||
    first == 'lizard' && (second == 'paper' || second == 'spock') ||
    first == 'spock' && (second == 'rock' || second == 'scissors')
end

def display_results(player, computer)
  if win?(player, computer)
    'You won!'
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

wins_player = 0
wins_computer = 0
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} (first letter)")
    choice_letter = Kernel.gets().chomp()

    case choice_letter
    when 'r'
      choice = 'rock'
    when 'p'
      choice = 'paper'
    when 's'
      prompt('1 for scissors, 2 for spock')
      s_choice = Kernel.gets().chomp()
      case s_choice
      when '1'
        choice = 'scissors'
      when '2'
        choice = 'spock'
      end
    when 'l'
      choice = 'lizard'
    end

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  puts display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    wins_player += 1
  else
    wins_computer += 1
  end

  break if wins_player == 3 || wins_computer == 3

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playinig. Goodbye!")
