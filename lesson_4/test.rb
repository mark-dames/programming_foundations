SUITS = ['H', 'D', 'S', 'C'].freeze
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10'] +
         ['J', 'Q', 'K', 'A'].freeze

MAX_VALUE = 21
DEALER_STOP = 17

def prompt(msg)
  puts "=> #{msg}"
end

def clear_screen
  system('clear') || system('cls')
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == "A"
             11
           elsif value.to_i.zero? # J, Q, K
             10
           else
             value.to_i
           end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > MAX_VALUE
  end

  sum
end

def busted?(cards)
  total(cards) > MAX_VALUE
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > MAX_VALUE
    :player_busted
  elsif dealer_total > MAX_VALUE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def print_compared_cards(dealer_cards, player_cards)
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  puts "=============="
end

loop do
  prompt "Welcome to the #{MAX_VALUE}card game"
  player_points = 0
  dealer_points = 0
  loop do
    sleep(2.5)
    clear_screen
    # initialize vars
    deck = initialize_deck
    player_cards = []
    dealer_cards = []

    # initial deal
    2.times do
      player_cards << deck.pop
      dealer_cards << deck.pop
    end

    prompt "Dealer has #{dealer_cards[0]} and ?"
    prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a"\
           "total of #{total(player_cards)}."

    # player turn
    loop do
      player_turn = nil
      loop do
        prompt "Would you like to (h)it or (s)tay?"
        player_turn = gets.chomp.downcase
        break if ['h', 's'].include?(player_turn)
        prompt "Sorry, must enter 'h' or 's'."
      end

      if player_turn == 'h'
        player_cards << deck.pop
        prompt "You chose to hit!"
        prompt "Your cards are now: #{player_cards}"
        prompt "Your total is now: #{total(player_cards)}"
      end

      break if player_turn == 's' || busted?(player_cards)
    end

    if busted?(player_cards)
      display_result(dealer_cards, player_cards)
      print_compared_cards(dealer_cards, player_cards)
      dealer_points += 1
      prompt "The points for dealer are now #{dealer_points}"
      break if dealer_points == 5
      next
    else
      prompt "You stayed at #{total(player_cards)}"
    end

    # dealer turn
    prompt "Dealer turn..."

    loop do
      break if busted?(dealer_cards) || total(dealer_cards) >= DEALER_STOP

      prompt "Dealer hits!"
      dealer_cards << deck.pop
      prompt "Dealer's cards are now: #{dealer_cards}"
    end
    dealer_total = total(dealer_cards)
    if busted?(dealer_cards)
      prompt "Dealer total is now: #{dealer_total}"
      display_result(dealer_cards, player_cards)
      print_compared_cards(dealer_cards, player_cards)
      player_points += 1
      prompt "The points for player are now: #{player_points}"
      break if player_points == 5
      next
    else
      prompt "Dealer stays at #{dealer_total}"
    end

    # both player and dealer stays - compare cards!
    print_compared_cards(dealer_cards, player_cards)

    display_result(dealer_cards, player_cards)
    round_won = detect_result(dealer_cards, player_cards)
    if round_won == :player
      player_points += 1
      prompt "The points for player are now: #{player_points}"
    elsif round_won == :dealer
      dealer_points += 1
      prompt "The points for dealer are now #{dealer_points}"
    else
      prompt "No points for either this round"
    end

    break if dealer_points == 5 || player_points == 5
  end

  if dealer_points == 5
    prompt "Dealer has 5 points won this game!"
  elsif player_points == 5
    prompt "Player has 5 points and won this game!"
  end

  break unless play_again?
end

prompt "Thank you for playing the #{MAX_VALUE}card game! Good bye!"
