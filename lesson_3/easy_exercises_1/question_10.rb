flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flinstones_hash = {}

flintstones.each_with_index do |name, idx|
  flinstones_hash[name] = idx
end

p flinstones_hash
