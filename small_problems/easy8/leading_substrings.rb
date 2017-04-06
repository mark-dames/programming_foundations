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

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
