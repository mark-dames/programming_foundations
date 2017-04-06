def sequence(count, starting_num)
  sequence = []
  1.upto(count) do |value|
    sequence << (value * starting_num)
  end
  sequence
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []

# use a loop
def sequence(count, starting_num)
  sequence = []
  value = 1
  loop do
    break if value > count
    sequence << (value * starting_num)
    value += 1
  end
  sequence
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []

#use step
def sequence(count, starting_num)
  sequence = []
  1.step(count, 1) { |num| sequence << (num * starting_num) }
  sequence
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []

# use a range and map
def sequence(count, starting_num)
  (1..count).map { |num| num * starting_num }
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
