WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def joinor(arr, delimeter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimeter)
  end
end

def place_piece!(board, current_player)
  if current_player == 'computer'
    computer_places_piece!(board)
  elsif current_player == 'player'
    player_places_piece!(board)
  end
end

def alternate_player(current_player)
  if current_player == 'computer'
    'player'
  else
    'computer'
  end
end

def player_places_piece!(board)
  square = ''
  loop do
    prompt "Choose a square to place a piece (#{joinor(empty_squares(board))})"
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)
    prompt "Sorry. that's not a valid choice"
  end
  board[square] = PLAYER_MARKER
end

def computer_places_piece!(board)
  square = find_at_risk_square(board)
  return board[square] = COMPUTER_MARKER if !square.nil?
  square = 5 if board[5] == INITIAL_MARKER
  if square.nil?
    square = empty_squares(board).sample
  end

  board[square] = COMPUTER_MARKER
end

def find_square(board, line)
  square = board.select do |k, v|
    line.include?(k) && v == INITIAL_MARKER
  end
  square.keys.first
end

def find_at_risk_square(board)
  WINNING_LINES.each do |line|
    next unless board.values_at(*line).count(COMPUTER_MARKER) == 2 ||
                board.values_at(*line).count(PLAYER_MARKER) == 2
    square = find_square(board, line)
    return square if !square.nil?
  end
  nil
end

def board_full?(board)
  empty_squares(board).empty?
end

def someone_won?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    if board.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif board.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  player_score = 0
  computer_score = 0
  loop do
    board = initialize_board

    current_player = 'computer'
    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    if detect_winner(board) == 'Player'
      player_score += 1
      prompt "Player has a score of #{player_score}"
    elsif detect_winner(board) == 'Computer'
      computer_score += 1
      prompt "Computer has a score of #{computer_score}"
    end

    break if player_score == 5 || computer_score == 5

    sleep(1.5)
  end
  if player_score == 5
    prompt "Congratulations, you reached a score of 5 and won"\
           "the Tic Tac Toe game!"
  else
    prompt "Computer has won, better luck next time!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt "Thank's for playing Tick Tac Toe!. Goodbye!"
