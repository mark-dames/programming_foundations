SQUARE_FEET = 10.7639

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f

puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f

area_in_square_meters = (length * width).round(2)
area_in_square_feet = (area_in_square_meters * SQUARE_FEET).round(2)

puts "The area of the room is #{area_in_square_meters} square meters (#{area_in_square_feet} square feet)"

# futher exploration

FEET_TO_SQ_INCH = 144
SQINCH_TO_SQCM = 6.4516

puts 'Enter the length of the room in feet:'
length = gets.chomp.to_f

puts 'Enter the width of the room in feet'
width = gets.chomp.to_f

area_in_square_feet = (length * width).round(2)
area_in_square_inches = (area_in_square_feet * FEET_TO_SQ_INCH).round(2)
area_in_square_cm = (area_in_square_inches * SQINCH_TO_SQCM).round(2)

puts "#The area of the room is #{area_in_square_feet} in feet, #{area_in_square_inches} in inches " + \
     "#{area_in_square_cm} in cm"
