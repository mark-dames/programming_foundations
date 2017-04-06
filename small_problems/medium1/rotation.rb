def rotate_array(array)
  return array if array.size < 2

  array.slice(1..-1).concat([array[0]])
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true
puts rotate_array([]) == []

#futher exploration

def rotate_string(string)
  strings_array = string.split
  rotate_array(strings_array).join(' ')
end

puts rotate_string('Mark from Holland.') == 'from Holland. Mark'
puts rotate_string('Hello world!') == 'world! Hello'
string = 'LaunchSchool is great!!!'
puts rotate_string(string) == 'is great!!! LaunchSchool'
puts string == 'LaunchSchool is great!!!'

def rotate_number(number)
  number_string = number.to_s
  digits_array = number_string.chars
  rotate_array(digits_array).join.to_i
end

puts rotate_number(546) == 465
puts rotate_number(55781) == 57815
puts rotate_number(5) == 5
