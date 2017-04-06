numbers_array = []

puts "Enter the first number"
first_number = gets.chomp.to_i
numbers_array.push(first_number)

puts "Enter the second number"
second_number = gets.chomp.to_i
numbers_array.push(second_number)

puts "Enter the thirth number"
thirth_number = gets.chomp.to_i
numbers_array.push(thirth_number)

puts "Enter the fourth number"
fourth_number = gets.chomp.to_i
numbers_array.push(fourth_number)

puts "Enter the fifth number"
fifth_number = gets.chomp.to_i
numbers_array.push(fifth_number)

puts "Enter the last number"
last_number = gets.chomp.to_i

if numbers_array.include?(last_number)
  puts "The number #{last_number} appears in #{numbers_array}"
else
  puts "The number #{last_number} does not appear in #{numbers_array}."
end

#using a loop

def get_numbers
  numbers_array = []
  letters = %w(first second thirth fourth fifth)
  counter = 0
  loop do
    puts "Enter the #{letters[counter]} number"
    number = gets.chomp.to_i
    numbers_array.push(number)
    counter += 1
    break if counter > 4
  end
  numbers_array
end

numbers_array = get_numbers

puts "Please enter the last number number"
last_number = gets.chomp.to_i

if numbers_array.include?(last_number)
  puts "The number #{last_number} appears in #{numbers_array}"
else
  puts "The number #{last_number} does not appear in #{numbers_array}."
end
