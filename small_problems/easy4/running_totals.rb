def running_total(array)
  sum = 0
  array.map do |number|
    sum += number
  end
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

# using loop

def running_total(array)
  running_total = []
  sum = 0
  counter = 0
  loop do
    break if counter == array.size
    running_total << sum += array[counter]
    counter += 1
  end
  running_total
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

# using each_with_object

def running_total(array)
  sum = 0
  array.each_with_object([]) do |number, running_total|
    running_total << sum += number
  end
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
