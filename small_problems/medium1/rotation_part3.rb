def rotate_array(array)
  return array if array.size < 2

  array.slice(1..-1).concat([array[0]])
end

def rotate_rightmost_digits(number, n_digits)
  digits_array = number.to_s.chars
  right_most_digits = digits_array.slice((digits_array.size - n_digits)..-1)
  rotated_digits = digits_array.slice(0...(digits_array.size - n_digits)) + rotate_array(right_most_digits)
  rotated_digits.join.to_i
end

def max_rotation(number)
  n_digits = number.to_s.size
  loop do
    break if n_digits == 1
    number = rotate_rightmost_digits(number, n_digits)
    n_digits -= 1
  end
  number
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845

#futher exploration
def max_rotation(num)
  num_str = num.to_s
  num_str.size.times do |index|
    num_str[index..-1] = num_str[index + 1..-1] + num_str[index]
  end
  num_str.to_i
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
