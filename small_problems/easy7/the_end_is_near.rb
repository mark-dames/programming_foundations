def penultimate(words)
  words_array = words.split
  words_array[-2]
end


puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

#futher exploration

def penultimate(words)
  words_array = words.split
  array_size = words_array.size
  return 'The array has less than two words or is empty!' if array_size < 2
  middle_odd_index = (array_size.to_f / 2).floor
  words_array[middle_odd_index]
end

puts penultimate('Launch School is great!')
puts penultimate('last word')
puts penultimate('last')
puts penultimate('')
puts penultimate('hello Mark how are you today?')

