VALID_CHOICES = %w(rock papers scissors spock lizard)

def letter_to_word(letter)
  case letter
    when 'r' then 'rock'
    when 'p' then 'papers'
    when 'l' then 'lizard'
    when 's' then 'scissors'
    when 'S' then 'spock'
    else     false
  end
end



  choice = ''
  loop do
    puts("choose one: #{VALID_CHOICES.join(', ')}")
    which_letter  = <<-LETTER

    type r for rock
    type p for papers
    type l for lizard
    type s for scissors
    type S for spock

    LETTER

    puts which_letter


    choice = letter_to_word(Kernel.gets().chomp())
    
    break if VALID_CHOICES.include?(choice)
    
    puts("That's not a valid choice.")
  end

  puts choice

