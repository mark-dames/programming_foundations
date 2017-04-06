DIGITS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(integer)
  digits = []
  loop do 
    integer, remainder = integer.divmod(10)
    digits.unshift(remainder)
    break if integer == 0
  end

  digits.map { |digit| DIGITS[digit] }.join
end

def signed_integer_to_string(integer)
  if integer < 0
    '-' + integer_to_string(integer.abs)
  elsif integer > 0
    '+' + integer_to_string(integer)
  else
    integer_to_string(integer)
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
puts signed_integer_to_string(-45677) == '-45677'
