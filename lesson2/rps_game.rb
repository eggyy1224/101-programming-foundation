VALID_CHOICES = ['rock', 'scissor', 'paper']

def prompt(msg)
  puts "=>#{msg}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissor') ||
    (first == 'scissor' && second == 'paper') ||
    (first == 'paper' && second == 'rock')
end

def display_result(choice, computer_choice)
  if win?(choice, computer_choice)
    'You win!'
  elsif win?(computer_choice, choice)
    'You lose!'
  else
    'Tie game!'
  end
end

player_score = 0
computer_score = 0

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}?"
    choice = gets.chomp
    choice = case choice
             when 's'
               'scissor'
             when 'r'
               'rock'
             when 'p'
               'paper'
             end
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt 'invalid input, please make a choice again!'
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt display_result(choice, computer_choice)

  if display_result(choice, computer_choice) == 'You win!'
    player_score += 1
  elsif display_result(choice, computer_choice) == 'You lose!'
    computer_score += 1
  end

  prompt "your choice: #{choice}, computer's choice:
  #{computer_choice}, score: player#{player_score} vs computer#{computer_score}"

  if player_score == 3
    prompt 'player win!'
    break
  elsif computer_score == 3
    prompt 'computer win!'
    break
  end
end
