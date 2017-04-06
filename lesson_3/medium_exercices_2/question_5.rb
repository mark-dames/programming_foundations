answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

#outputs 34. answer refrences integer object 34. The method is non destructive so object is not chenged.

