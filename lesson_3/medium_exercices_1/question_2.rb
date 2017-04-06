statement = "The Flinstones Rock"

letter_frequencies = {}
statement.delete(" ").each_char do |letter|
  letter_frequencies[letter] = statement.count(letter)
end

p letter_frequencies


