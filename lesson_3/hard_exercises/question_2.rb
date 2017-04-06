greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

=begin
  It will print out hi there. Informal greetings is a reference
  to the orginal object. Therefore  by using the << operator
  it change the object stored in memory. the value of the hask also prints out
  hi there now. 


=end
