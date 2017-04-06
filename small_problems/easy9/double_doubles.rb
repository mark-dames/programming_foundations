def twice(number)
  number_string = number.to_s
  if number_string.size.odd?
    number * 2
  else
    half_index = number_string.size / 2
    if number_string[0...half_index] == number_string[half_index..-1]
      number
    else
      number * 2
    end
  end
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
puts twice(120) == 240
puts twice(2) == 4 

# short solution
def twice(number)
  middle = number.to_s.size / 2

  return number if number.to_s[0...middle] == number.to_s[middle..-1]
  number * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
puts twice(120) == 240
puts twice(2) == 4
