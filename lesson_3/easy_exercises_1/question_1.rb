# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# It will print out the elements of the  object: 1 2 2 3 . We call first uniq method on numbers which return an array
# without duplicate elements. However this is not a destructive method. So when we call puts on
# numbers it will just print out 1 2 2 3 If we used the bang operator ! after uniq then the original
# object would be modified to 1 2 3 and that would be printed out then.


