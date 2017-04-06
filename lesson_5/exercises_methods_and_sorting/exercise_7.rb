# What is the block's return value in the following code? How is it determined?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

=begin
  The return value is true. any? returns true or false if any of the elements returns true. It looks
  at the block return value.
  In this case .odd? return true with 1 and 3. 
=end
