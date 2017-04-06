def calculate_percentage(count_letter, size)
  percentages_letter = count_letter.each do |key, value|
    count_letter[key] = (value / size.to_f) * 100
  end
  percentages_letter 
end

def letter_percentages(string)
  count_letter = { uppercase: 0, lowercase: 0, neither: 0 }

  letters = string.chars
  size = string.size
  letters.each do |letter|
    if letter.match(/[a-z]/)
      count_letter[:lowercase] += 1
    elsif letter.match(/[A-Z]/)
      count_letter[:uppercase] += 1
    else
      count_letter[:neither] += 1
    end
  end
  percentages_letter = calculate_percentage(count_letter, size)
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
