def interleave(array1, array2)
  interleave = []
  counter = 0
  loop do
    break if counter == array1.size
    interleave << array1[counter]
    interleave << array2[counter]
    counter += 1
  end
  interleave
end


p interleave([1, 2, 3], ['a', 'b', 'c'])
puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#using each_with_index
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#futher exploration using .zip method
def interleave(array1, array2)
  array1.zip(array2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
