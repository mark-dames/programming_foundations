statement = "The Flintstones Rock"

hsh = {}

statement.delete(' ').chars do |char|
  hsh[char] = statement.count(char)
end

p hsh

statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result

