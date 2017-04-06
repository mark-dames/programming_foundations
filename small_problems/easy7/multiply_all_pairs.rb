def multiply_all_pairs(array1, array2)
  pairs_multiplied = array1.product(array2).map do |sub_arr|
    sub_arr[0] * sub_arr[-1]
  end
  pairs_multiplied.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
puts multiply_all_pairs([2, 4, 10], [2, 3, 4]) == [4, 6, 8, 8, 12, 16, 20, 30, 40]
