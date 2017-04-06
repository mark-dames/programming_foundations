1.upto(99) do |num|
  puts num if num % 2 == 1
end

1.step(99, 2) do |num|
  puts num
end

counter = 1
while counter <= 99
  puts counter if counter.odd?
  counter += 2
end

(1..99).to_a.each do |num|
  puts num if num.odd?
end




