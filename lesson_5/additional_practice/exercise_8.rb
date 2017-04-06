# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

=begin
output would be:
1
3
When we modify an array while we itarating over it, it can lead to unexpected behavior. 
It is a good rule to not modify while itarating.
=end

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

=begin
output:
1
2
=end
