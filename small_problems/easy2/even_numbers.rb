(1..99).to_a.each do |num|
  puts num if num.even?
end

counter = 1
while counter <= 99
  puts counter if counter % 2 == 0
  counter += 1
end

1.upto(99) do |num|
  puts num if num.even?
end

1.step(99, 1) do |num|
  puts num if num.even?
end
