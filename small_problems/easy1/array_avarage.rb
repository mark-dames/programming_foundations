require 'pry'
def average(numbers_list)
  sum = numbers_list.reduce(:+)
  sum / numbers_list.size
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

def average(numbers_list)
  sum = 0
  counter = 0

  loop do
    break if counter == numbers_list.size
    sum += numbers_list[counter]
    counter += 1    
  end
  sum / numbers_list.size
end

puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
