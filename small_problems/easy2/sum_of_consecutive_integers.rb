puts 'Please enter a integer greater than 0:'
integer = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product"
choice = gets.chomp.downcase

if choice == 's'
  sum = (1..integer).reduce(:+)
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
else
  product = (1..integer).reduce(:*)
  puts "The product of the integers between 1 and #{integer} is #{product}"
end

# using a loop
puts 'Please enter a integer greater than 0:'
integer = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product"
choice = gets.chomp.downcase

if choice == 's'
  sum = 0
  counter = 1
  loop do
    sum += counter
    break if counter == integer
    counter += 1
  end
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
else
  product = 1
  counter = 1
  loop do
    product *= counter
    break if counter == integer
    counter += 1
  end
  puts "The product of the integers between 1 and #{integer} is #{product}"
end

# futher exploration

def compute_sum(integer)
  (1..integer).reduce(:+)
end

def compute_product(integer)
  (1..integer).reduce(:*)
end

integer = nil
loop do
  puts 'Please enter a integer greater than 0:'
  integer = gets.chomp.to_i
  break if integer > 0
  puts "This ia not a valid number"
end

choice = ''
loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product"
  choice = gets.chomp.downcase
  break if choice == 's' || choice == 'p'
  puts "This is not a valid choice"
end 

if choice == 's'
  sum = compute_sum(integer)
  puts "The sum of the integers between 1 and #{integer} is #{sum}"
else
  product = compute_product(integer)
  puts "The product of the integers between 1 and #{integer} is #{product}"
end





