flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hsh = {}

flintstones.each_with_index do |name, idx|
  hsh[name] = idx
end

p hsh

hsh = {}
counter = 0

loop do
  hsh[flintstones[counter]] = counter
  counter += 1
  break if counter == flintstones.size
end

p hsh





