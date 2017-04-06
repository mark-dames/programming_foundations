DIGITS = {
   'zero' =>  '0',
   'one' =>   '1',
   'two' =>   '2',
   'three' => '3',
   'four' =>  '4',
   'five' =>  '5',
   'six'  => '6',
   'seven' => '7',
   'eight' => '8',
   'nine' =>  '9'
}

def word_to_digit(sentence)
  digits_sentence = []
  words = sentence.split
  words.each do |word|
    if DIGITS.include?(word) 
      digits_sentence << DIGITS[word]
    elsif word.end_with?('.') && DIGITS.include?(word[0...-1])
      digits_sentence << (DIGITS[word.delete('.')] + '.')
    else
      digits_sentence << word
    end
  end
  digits_sentence.join(' ')
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
puts word_to_digit('Please call me at four six seven zero one two. Thanks.') == 'Please call me at 4 6 7 0 1 2. Thanks.'
