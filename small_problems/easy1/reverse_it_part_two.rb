def reverse_words(words)
  words = words.split
  reversed_words = []
  counter = 0

  loop do
    if words[counter].size >= 5
      reversed_words << words[counter].reverse
    else
      reversed_words << words[counter]
    end
    counter += 1
    break if counter == words.size
  end
  reversed_words.join(' ')
end
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

