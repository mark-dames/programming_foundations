def halvsies(array)
  size = array.size
  if size.odd?
    half = array.size / 2 + 1
  else
    half = array.size / 2
  end

  first_half = array.slice(0...half)
  second_half = array.slice(half..-1)  
  return first_half, second_half
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
