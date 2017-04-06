result = [1, 2, 3].select do |num|
  num > 5
  'hi'
end

p result 

=begin
  The return value is a new array [1, 2, 3] 
  This is because select looks at the truthiness of the block's
  return value. 'hi' is a string and a string is considered a truthy value. 
  Every element is int this array because block returns true for every element.
  num > 5 is ignored because 'hi' is the last line n the method. 
=end
