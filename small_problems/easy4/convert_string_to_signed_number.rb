DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(number_string)
  digits = number_string.chars.map { |digit| DIGITS[digit] }

  number = 0
  digits.each do |digit|
    number = 10 * number + digit
  end
  number
end

def string_to_signed_integer(number_string)
  if number_string[0] == '-'
    -string_to_integer(number_string[1..-1])
  elsif number_string[0] == '+'
    string_to_integer(number_string[1..-1])
  else
    string_to_integer(number_string)
  end
end


puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

# futher exploration. refactor

def string_to_integer(number_string)
  digits = number_string.chars.map { |digit| DIGITS[digit] }

  number = 0
  digits.each do |digit|
    number = 10 * number + digit
  end
  number
end

def string_to_signed_integer(string)
 integer = string_to_integer(string.delete('+-'))
 string[0] == '-' ? -integer : integer
end


puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
