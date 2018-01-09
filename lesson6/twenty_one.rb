require 'pry'

SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0

  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

def detect_result(dealer_cards, player_cards)
  dealer_total = total dealer_cards
  player_total = total player_cards

  if player_total > 21
    'player_busted'
  elsif dealer_total > 21
    'dealer_busted'
  elsif dealer_total < player_total
    'player'
  elsif player_total < dealer_total
    'dealer'
  else
    'tie'
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when 'player_busted'
    prompt "You busted, dealer win!"
  when 'dealer_busted'
    prompt "Dealer busted, player win!"
  when 'player'
    prompt "player win!"
  when 'dealer'
    prompt "dealer win!"
  when 'tie'
    prompt "Tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def winner?(dealer_score, player_score)
  if dealer_score == 2
    'dealer'
  elsif player_score == 2
    'player'
  else
    nil
  end
end

# main loop
loop do
  prompt "Welcome to Twenty-One!"
  dealer_score = 0
  player_score = 0
  loop do
    deck = initialize_deck
    

    # initial deal
    dealer_cards = []
    player_cards = []

    2.times do
      dealer_cards << deck.pop
      player_cards << deck.pop
    end
    dealer_total = total dealer_cards
    player_total = total player_cards

    prompt "Dealer's cards: #{dealer_cards[0]} and ?"
    prompt "Your cards: #{player_cards[0]} and #{player_cards[1]},
            total: #{player_total} points"
  
    # player turn
    loop do
      player_turn = nil
      loop do
        prompt "(h)it or (s)tay"
        player_turn = gets.chomp.downcase
        break if ['h', 's'].include?(player_turn)
        prompt "must enter 's' or 'h'!"
      end

      # hit condition
      if player_turn == 'h'
        prompt 'You choose hit'
        player_cards << deck.pop
        player_total = total player_cards
        
        prompt "Your cards are now: #{player_cards}, total: #{player_total}"
      end
      break if player_turn == 's' || busted?(player_cards)
    end
    


    # player busted?
    if busted?(player_cards)
      display_result(dealer_cards, player_cards)
      dealer_score += 1
      if winner?(dealer_score, player_score)
        break
      else
        prompt "Score now: dealer#{dealer_score}, player#{player_score}, next round!" 
        next
      end
    else
      prompt "You stay at #{player_total} points"
    end
    # Dealer turn
    prompt "Dealer turn"

    loop do
      break if dealer_total >= 17

      prompt "Dealer hits"
      dealer_cards << deck.pop
      dealer_total = total dealer_cards
      prompt "dealer's card are now #{dealer_cards}"
    end

    if busted?(dealer_cards)
      prompt "dealer's point is #{dealer_total} "
      display_result(dealer_cards, player_cards)
      player_score += 1
      if winner?(dealer_score, player_score)
        break
      else
        prompt "Score now: dealer#{dealer_score}, player#{player_score}, next round!" 
        next
      end
    else
      prompt "Dealer stay at #{dealer_total} points"
    end

    # both are stay
    puts "=============="
    prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
    prompt "Player has #{player_cards}, for a total of: #{player_total}"
    puts "=============="

    display_result(dealer_cards, player_cards)
    if detect_result(dealer_cards, player_cards).start_with?('d')
      dealer_score += 1
    elsif detect_result(dealer_cards, player_cards).start_with?('p')
      player_score += 1
    end

    if winner?(dealer_score, player_score)
      break
    else
      prompt "Score now: dealer#{dealer_score}, player#{player_score}, next round!" 
      next
    end

    
  end
  

  prompt "final Score: dealer#{dealer_score},
  player#{player_score}, #{winner?(dealer_score, player_score)} win!"
  # play_again?
  break unless play_again?
end
