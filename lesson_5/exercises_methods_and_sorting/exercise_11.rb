# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

result = arr.sort_by do |number1, number2|
  number2.to_i <=> number1.to_i
end

p result

=begin
  We call the sort.by method on the array which sorts the method based on the blocks return value.
  Because we dealing with numbers as strings we need to convert every elements to a integer. Because we want a descending order
  we switch the numbers to compare.
=end

