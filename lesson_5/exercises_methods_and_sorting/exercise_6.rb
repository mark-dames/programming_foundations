# ['ant', 'bear', 'caterpillar'].pop.size

puts ['ant', 'bear', 'caterpillar'].pop.size

=begin
  The return value is 11.
  We have two method calls(chained together).
  Pop returns the last element(destructive removes last element from array).
  The return value is here the string 'caterpillar', then on that string we call the size method
  which returns 10. Th return value is 11. 
=end
