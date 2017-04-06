# How does count treat the block's return value? How can we find out?

result = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p result

=begin
  We can find out by referencing the Ruby docs.
  When calling count on a block, count looks at the block return value.
  If the return value is a true value then the element is counted. 
  In this case it counts the elements where the length of the string is less
  than 4. Count returns then an integer. In this case it returns 2.
=end
