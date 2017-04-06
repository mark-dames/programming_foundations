LOWERCASE = ('a'..'z').to_a
UPCASE = ('A'..'Z').to_a

def letter_case_count(string)
  letter_case = {
    lowercase: 0,
    uppercase: 0,
    neither:   0
  }

  string.chars.each do |char|
    if LOWERCASE.include?(char)
      letter_case[:lowercase] += 1
    elsif UPCASE.include?(char)
      letter_case[:uppercase] += 1
    else
      letter_case[:neither] += 1
    end
  end
  letter_case
end


puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

#using regex
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
