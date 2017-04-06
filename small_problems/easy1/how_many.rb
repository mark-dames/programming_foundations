
def count_occurrences(array)
  occurances = {}

  array.uniq.each do |element|
    occurances[element] = array.count(element)
  end

  occurances.each do |element, count|
    puts "#{element} => #{count}."
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

