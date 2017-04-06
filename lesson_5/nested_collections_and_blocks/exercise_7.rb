=begin
  Given the following data structure use a combination of methods, including either the select or reject method, 
  to return a new array identical in structure to the original but containing only the integers that are multiples of 3.
=end


arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

result = arr.map do |sub_arr|
  sub_arr.select do |number|
    number % 3 == 0
  end
end

p result

# using reject as solution

result = arr.map do |sub_arr|
  sub_arr.reject do |number|
    number % 3 != 0
  end
end

p result

