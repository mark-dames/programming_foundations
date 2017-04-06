def select_fruit(produce)
  products = produce.keys
  fruits = {}
  count = 0
  loop do
    current_product = products[count]
    current_value = produce[current_product]
    
    fruits[current_product] = current_value if current_value == 'Fruit'
    
    count += 1
    break if count == produce.size
  end
  fruits
end






produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

