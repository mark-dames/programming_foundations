ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.include?('Spot')
puts ages.has_key?('Spot')
puts ages.fetch('Spot', 'not found')
puts ages.member?('Spot')
puts ages.key?('Spot')
