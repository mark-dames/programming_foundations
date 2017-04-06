# What is the return value of reject? Why?

result = [1, 2, 3].reject do |num|
  puts num
end

p result

=begin
  The return value is a new array [1, 2, 3]
  Reject looks at the block's return value to see if the return value is falsey
  If it is falsey the element is selected. Puts num returns nil(because puts returns always nil).
  nil is consired a falsey value(just as false). Every element is this array is then selected.
=end



