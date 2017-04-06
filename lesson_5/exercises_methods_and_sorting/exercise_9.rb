# What is the return value of map? Why?

result = { a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

p result

=begin
  It returns a new array in this case: [nil, 'bear']
  Map returns a new array based on the blocks return value.
  Every element is transformed. map means transformation. 
  Inside the method we have an if statement. For the first key value pair it return nil and
  for the second key value pair it returns 'bear'. nil and 'bear' we be used for transformation.
=end

