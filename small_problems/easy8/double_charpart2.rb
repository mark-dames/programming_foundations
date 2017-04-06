VOWELS = %w(a e i o u)

def double_consonants(string)
  doubled_consonants = ''
  string.each_char do |char|
    if VOWELS.include?(char) || char =~ /[^A-Za-z]/
      doubled_consonants << char
    else
      doubled_consonants << char << char
    end
  end
  doubled_consonants
end


puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
