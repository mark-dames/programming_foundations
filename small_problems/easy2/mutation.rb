# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
print out Moe, Larry, CURLY SHEMP Harpo CHICO Groucho Zeppo. Print the values starting with c or s upcased.
The indexes inside an array are also references to objects. Here every index reference a string object. 
We call the destructive method call upcase! on the values which start with c or s. This changes the code in place.
=end
