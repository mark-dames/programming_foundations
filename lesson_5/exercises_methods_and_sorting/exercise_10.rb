# What is the block's return value in the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

=begin
  a new array: [1, nil, nil]
  if get executed if the current element is bigger as 1.
  The return value is nil because puts always returns nil.
  The else block return the number.
=end

