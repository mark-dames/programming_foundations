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

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917

#another way to solve

def rotate_rightmost_digits(number, n_digits)
  all_digits = number.to_s.chars
  all_digits[-n_digits..-1] = rotate_array(all_digits[-n_digits..-1])
  all_digits.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917

