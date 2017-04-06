def multiply(number1, number2)
  number1 * number2
end

def square(number)
  multiply(number, number)
end

puts square(5) == 25
puts square(-8) == 64

# futher exploration
def multiply(num1, num2)
  num1 * num2
end

def power(num, n)
  result = 1
  while n > 0
    result = multiply(result, num)
    n -= 1
  end
  result
end

puts power(8, 2)
puts power(5, 3)
