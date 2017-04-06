def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

puts fibonacci(3)
puts fibonacci(5)
puts fibonacci(4)
puts fibonacci(15)
#fibonacci(20) == 6765
#fibonacci(100) == 354224848179261915075
#fibonacci(100_001) # => 4202692702.....8285979669707537501
