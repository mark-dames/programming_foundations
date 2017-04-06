def featured(number)
  loop do
    number += 1
    break if number.odd? && number % 7 == 0
  end

  loop do
    digits = number.to_s.chars
    return number if digits.uniq == digits
    number += 14
    break if number >= 9_876_543_210
  end
  "There is no possible number that fulfills those requirements"
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
