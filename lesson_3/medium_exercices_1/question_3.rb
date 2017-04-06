# puts "the value of 40 + 2 is " + (40 + 2)
=begin
  This wil raise the error no conversion Fixnum into string. This is because you cant add a string to a number. 
=end

#fix one: using string interpolation
puts "the value of 40 + 2 is #{(40 + 2)}"

#fix two: using.to_f on the result.
puts "the value of 40 + 2 is " + (40 + 2).to_s
