# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
puts hash.shift
p hash

=begin
  We can find out by referencing the ruby docs.
  Shift deletes the first key value pair in the hash.
  It is a destructive mehtod call. It returns the key value pair in a two items array. 
=end
