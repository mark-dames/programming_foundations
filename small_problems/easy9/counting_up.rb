def sequence(number)
  digits = []
  1.upto(number) do |digit|
    digits << digit
  end
  digits
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
puts sequence(100) == (1..100).to_a

# use a loop
def sequence(number)
  digits = []
  counter = 1
  loop do
    digits << counter
    counter += 1
    break if counter > number
  end
  digits
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
puts sequence(100) == (1..100).to_a

#use a while loop
def sequence(number)
  digits = []
  counter = 1
  while counter < number + 1
    digits << counter
    counter += 1
  end
  digits
end
puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
puts sequence(100) == (1..100).to_a

# most simple one line solution
def sequence(number)
  (1..number).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
puts sequence(100) == (1..100).to_a

#futher exploration

def sequence(number)
  number > 0 ? (1..number).to_a : (number..1).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(-5) == [-5, -4, -3, -2, -1, 0, 1]


