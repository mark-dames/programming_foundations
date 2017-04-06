def substrings_at_start(string)
  substrings = []
  count = 1
  loop do
    substrings << string.slice(0, count)
    break if count == string.size
    count += 1
  end
  substrings
end

def substrings(string)
  substrings = []
  0.upto(string.size - 1) do |idx|
    substrings << substrings_at_start(string.slice(idx, string.size))
  end
  substrings.flatten
end

p substrings('abcde')
puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
