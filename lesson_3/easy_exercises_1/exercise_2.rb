=begin
Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

what is != and where should you use it?
put ! before something, like !user_name
put ! after something, like words.uniq!
put ? before something
put ? after something
put !! before something, like !!user_name
=end

=begin
  ! and ? are not part of the ruby syntax, the used wioth method. The usage of ? and ! depends what you want the outcome to be.

  != is the not equal too operator: checks if the condition on the left is not equal to the condition on the right. 
  if not equal returns true if equal returns false. 
  
  ! before means make true values false and vice versa.

  ! after means that we deal with a destructive method/modifys the orginal object. The varaible is still 
  referencing the same object stored in memory. The ! change the object in memory.

  ? before you use in a ternary operator. It checks 2 outcomes and exucute on of those if true or false

  ? after we check if true or false and.

  !! means we make first change boolean and then change agian. for example true to false and back to true
=end
