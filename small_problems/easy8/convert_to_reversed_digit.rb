def reversed_number(number)
  number_string = number.to_s
  digits = number_string.chars
  reversed_digits = digits.reverse
  reversed_number = reversed_digits.join
  reversed_number.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # Note that zeros get dropped!
puts reversed_number(1) == 1


#futher exploration
def reversed_number(number)
  number.to_s.chars.reverse.join.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # Note that zeros get dropped!
puts reversed_number(1) == 1
