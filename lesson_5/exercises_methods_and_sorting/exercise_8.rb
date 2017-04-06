# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

=begin
  We can find out by referencing the ruby docs.
  It is not a destuctive method call.
  The take() method takes an number as an argument. It takes then 
  the first given number of elements from the array. In this case
  the first two elements and return array with those elements,
=end

