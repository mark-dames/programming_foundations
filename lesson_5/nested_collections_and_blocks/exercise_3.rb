# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

p a
p b
p arr

=begin
  a is 2 and b is [3, 8].
  The value of a did not change because we do not referfence a at any point.
  The value os b did change because b is an array. b and arr reference that array
=end
