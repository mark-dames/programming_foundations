
def oddities(list)
  odd_list = []
  list.each_with_index do |element, index|
    odd_list.push(element) if index.even?
  end
  odd_list
end


puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

# using while
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

# futher exploration

def evens(array)
  even_elements = []
  index = 1
  loop do
    break if index >= array.size
    even_elements << array[index]
    index += 2
  end
  even_elements
end

puts evens([2, 3, 4, 5, 6]) == [3, 5]
puts evens(['abc', 'def']) == ['def']
puts evens([123]) == []
puts evens([]) == []
puts evens(['mark', 'jan', 'olga']) == ['jan']

# using each with index
def evens(array)
  index = 0
  even_element = array.each_with_object([]) do |element, evens|
    evens << element if index.odd?
    index += 1 
  end
end

p evens([2, 3, 4, 5, 6]) == [3, 5]
p evens(['abc', 'def']) == ['def']
p evens([123]) == []
p evens([]) == []
p evens(['mark', 'jan', 'olga']) == ['jan']
