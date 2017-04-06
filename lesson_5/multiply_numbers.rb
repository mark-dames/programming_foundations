def multiply(numbers, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    current_number = numbers[counter]
    multiplied_numbers << current_number *= multiplier

    counter += 1
    break if counter == numbers.size
  end

  multiplied_numbers
end


my_numbers = [1, 4, 3, 7, 2, 6]
puts my_numbers.object_id
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers
puts my_numbers.object_id
