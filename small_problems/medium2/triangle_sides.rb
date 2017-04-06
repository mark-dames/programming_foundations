def is_valid_triangle?(length1, length2, length3)
  if length1 < 1 || length2 < 1 || length3 < 1
    return false
  elsif (length2 + length3) < length1
    return false
  end
end

def triangle(length1, length2, length3)
  return :invalid if is_valid_triangle?(length1, length2, length3) == false
    
  if length1 == length2 && length1 == length3
    :equilateral 
  elsif (length1 == length2 && length1 != length3) || length2 == length3
    :isosceles
  else
    :scalene 
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
puts triangle(5, 4, 2) == :scalene
puts triangle(-5, 2, 5) == :invalid
puts triangle(2.5, 5.1, 4) == :scalene
