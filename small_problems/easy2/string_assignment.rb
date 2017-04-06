
# What does this print out? Can you explain these results?
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin
print out BOB and BOB. 
Name is referencing Bob and save_name we set to name which hold Bob as object, so at this moment name and save_name
reference the same object Bob. We then call on name the destrucive method upcase!(because of the bang operator !).
This modify the code in place stored in memory. Bob gets now upcased. Now name and save name reference the Upcased version
of Bob.
=end

