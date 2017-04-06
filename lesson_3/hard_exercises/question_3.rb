def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

puts mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

=begin
it will print out:
'one'
'two'
'three'
Inside the method the parameters are set to different objects
however it has no effect on the vars outside the method.
Even when call the method with these three arguments., when after printing out the 3 vars the objects are the same.
=end

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

=begin
agian it will print out:
'one'
'two'
'three'
It has agian no effect on the vars defined outside the method. 
=end

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

=begin
it will now print out:
'two'
'three'
'one'
When we call the method with the 3 arguments, inside the method we use a destructive method call with gsub! That changes the orginal objects
stored in memory. So when we print outside the method the 3 vars the objects are changed.

=end
