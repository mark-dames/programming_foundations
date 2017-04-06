def how_old(age, name = 'Teddy')
  puts "#{name} is #{age} years old!"
end

puts "What is your name?"
name = gets.chomp

age = rand(20..200)
how_old(age, name)
age = rand(20..200)
how_old(age)
age = rand(20..200)
how_old(age, name)
