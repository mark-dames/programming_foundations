ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

puts ages.values.reduce(:+)

sum = 0
ages.each do |_, age|
  sum += age
end

puts sum





