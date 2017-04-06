def longest_sentence(text)
  sentences = text.split(/(?<=[?.!])\s*/)
  sorted_sentences = sentences.sort_by do |sentence|
    sentence.split.count
  end
  most_long_sentence = sorted_sentences[-1]
  amount_words = most_long_sentence.split.count
  puts "The most long sentence is: #{most_long_sentence}"
  puts "The numbers of words in the longest sentence is #{amount_words}."
end

text = File.read("example_text.txt")
longest_sentence(text)

puts ""

text = File.read("book_text.txt")
longest_sentence(text)

#futher exploration

#find longest word

puts ""

def longest_word(text)
  words = text.delete('[\.\?\!]').split
  longest = words.max_by { |word| word.size }
  puts "The longest word is #{longest}"
end

text = File.read("example_text.txt")
longest_word(text)

puts ""

text = File.read("book_text.txt")
longest_word(text)

