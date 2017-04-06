SPELLING_BLOCKS = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"]] +
                  [["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"]] +
                  [["V", "I"], ["L", "Y"], ["Z", "M"]]

def count_letters(spelling_block, letters)
  letters.count { |letter| spelling_block.include?(letter) }
end

def block_word?(word)
  letters = word.upcase.chars
  SPELLING_BLOCKS.each do |spelling_block|
    return false if count_letters(spelling_block, letters) > 1
  end
  true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
puts block_word?('butch') == false
