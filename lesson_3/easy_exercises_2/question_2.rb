ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

=begin
sum = 0
ages.each_value { |age| sum += age }

puts sum
=end

sum = ages.values.inject(:+)
puts sum
