def select_fruit(produce)
  selected_fruits = {}
  counter = 0

  products = produce.keys

  loop do
    current_product = products[counter]
    current_type = produce[current_product]

    if current_type == 'Fruit'
      selected_fruits[current_product] = current_type
    end

    counter += 1
    break if counter == produce.size
  end
  selected_fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
