def stringy(number)
  alternate = ""
  1.upto(number) do |digit|
    if digit.odd?
      alternate << '1'
    else
      alternate << '0'
    end
  end
  alternate
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

def stringy(number)
  alternate = ""
  counter = 1

  loop do
    if counter.odd?
      alternate << '1'
    else
      alternate << '0'
    end
    break if counter == number
    counter += 1
  end
  alternate
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

def stringy(number)
  [1, 0].cycle.take(number).join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further Exploration
def stringy(size, alt = 1)
  numbers = []

  size.times do |index|
    if alt == 0
      number = index.even? ? 0 : 1
      numbers << number
    else
      number = index.even? ? 1 : 0
      numbers << number
    end
  end
  numbers.join
end

puts stringy(6, 0) == '010101'
puts stringy(9) == '101010101'
puts stringy(4, 0) == '0101'
puts stringy(7) == '1010101'
