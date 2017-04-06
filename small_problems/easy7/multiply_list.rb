def multiply_list(array1, array2)
  products = []
  counter = 0
  loop do 
    break if counter == array1.size
    products << (array1[counter] * array2[counter])
    counter += 1
  end
  products
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list([10, 20, 30], [2, 2, 2]) == [20, 40, 60]

#using each_with_index

def multiply_list(array1, array2)
  products = []
  array1.each_with_index do |number, idx|
    products << number * array2[idx]
  end
  products
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list([10, 20, 30], [2, 2, 2]) == [20, 40, 60]

#futher exploration using zip

def multiply_list(array1, array2)
  array1.zip(array2).map { |arr| arr.reduce(:*) }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list([10, 20, 30], [2, 2, 2]) == [20, 40, 60]
