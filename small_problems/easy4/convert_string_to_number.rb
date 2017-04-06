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



puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
