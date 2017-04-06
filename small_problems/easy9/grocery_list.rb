def buy_fruit(fruits)
  amount_fruits = fruits.map do |sub_arr|
    [sub_arr[0]] * sub_arr[1]
  end
  amount_fruits.flatten
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

