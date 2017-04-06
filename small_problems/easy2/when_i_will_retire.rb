print 'What is your age? '
age = gets.chomp.to_i

print 'At what age would you like to retire? '
retire_age = gets.chomp.to_i

current_year = Time.new.year
years_left = retire_age - age
year_when_retire = current_year + years_left

puts "It's #{current_year}. You will retire in #{year_when_retire}"
puts "You have only #{years_left} years to go!"


