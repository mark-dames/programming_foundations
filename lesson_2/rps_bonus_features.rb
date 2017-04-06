require 'yaml'
MESSAGES = YAML.load_file('rps_messages.yml')

VALID_CHOICES = %w(rock paper scissors spock lizard)

WINNING = {
  'scissors' => %w(paper lizard),
  'paper'    => %w(rock spock),
  'rock'     => %w(lizard scissors),
  'lizard'   => %w(spock paper),
  'spock'    => %w(scissors rock)
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def letter_to_word(letter)
  case letter
  when 'r' then 'rock'
  when 'p' then 'paper'
  when 'l' then 'lizard'
  when 's' then 'scissors'
  when 'S' then 'spock'
  end
end

def win?(first, second)
  WINNING[first].include?(second)
end

def return_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

loop do
  user_points = 0
  computer_points = 0
  loop do
    choice = ''
    loop do
      which_letter = <<-LETTER
      choose one: #{VALID_CHOICES.join(', ')}
      type r for rock
      type p for paper
      type l for lizard
      type s for scissors
      type S for spock
      LETTER
      prompt which_letter

      choice = letter_to_word(gets.chomp)
      break if VALID_CHOICES.include?(choice)
      prompt(MESSAGES['not_valid_choice'])
    end

    computer_choice = VALID_CHOICES.sample

    prompt MESSAGES['choice'] % { choice: choice, computer_choice: computer_choice }

    prompt result = return_results(choice, computer_choice)

    user_points += 1 if result == 'You won!'
    computer_points += 1 if result == 'Computer won!'

    prompt MESSAGES['points'] % { user_points: user_points, computer_points: computer_points}

    if user_points == 5
      prompt(MESSAGES['user_wins'])
      break
    elsif computer_points == 5
      prompt(MESSAGES['computer_wins'])
      break
    end
  end
  
  answer = ''
  loop do
    prompt(MESSAGES['play_agian'])
    answer = gets.chomp
    break if answer == 'yes' || answer == 'no'
    prompt(MESSAGES['not_valid_answer'])
  end
  break if answer == 'no'
end

prompt(MESSAGES['goodbye'])
