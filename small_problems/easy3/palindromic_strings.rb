def palindrome?(string)
  string == string.reverse
end


puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

# futher exploration

def palindrome?(array)
  array == array.reverse
end

puts palindrome?(%w(m a d a m)) == true
puts palindrome?(%w(M a d a m)) == false
puts palindrome?([3,5,6,6,5,3]) == true

def palindrome?(data)
  data == data.reverse
end

puts palindrome?([3,5,6,6,5,3]) == true
puts palindrome?('madam') == true
