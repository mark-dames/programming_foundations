arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_arr|
  sub_arr.select do |num|
    num if num % 3 == 0
  end
end


arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_arr|
  sub_arr.reject do |num|
    num if num % 3 != 0
  end
end
