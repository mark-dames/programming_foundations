# What is the return value of each_with_object? Why?

result = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p result

=begin
  return value is a new hash {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
  each.with_object() takes an object as an argument. In this case a hash.
  It takes two block parameters the parameter representing each element and the hash.
  Here we set the first letter in the element as the key and the string as the value.
  When done iterating it returns the hash filled with key value pairs.
=end

