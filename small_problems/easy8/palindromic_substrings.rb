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

def palindromes(string)
  substring_array = substrings(string)

  palindromes = substring_array.select do |substring|
    if substring.size > 1
    substring == substring.reverse
    end
  end
  palindromes
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
p palindromes('Mark')

#futher exploration: Can you modify this method (and/or its predecessors) to ignore non-alphanumeric characters and case?

def palindromes(string)
  substring_array = substrings(string.downcase.delete("^A-Za-z"))
  substring_array

  palindromes = substring_array.select do |substring|
    if substring.size > 1
    substring == substring.reverse
    end
  end
  p palindromes
end

p palindromes('Ma*dam')
