=begin
  What happens when we modify an array while we are iterating over it? What would be output by this code?
  It will change the elements of the aray which will be modified. 
=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
#print out 1 and 3

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
#print out 1 and 2
