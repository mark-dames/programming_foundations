=begin
  Given this data structure, and without using the Array#flatten method, 
  write some code to return a new array containing all of the items in the original array but in a flat structure.
=end

arr = [['stars', 'river'], 'letter', ['leaves', ['horses', 'table']]]

result = arr.each_with_object([]) do |element1, array|
  if element1.class == Array
    element1.each do |element2|
      if element2.class == Array
        element2.each do |element3|
          array << element3
        end
      elsif element2.class == String
        array << element2
      end
    end
  elsif element1.class == String
    array << element1
  end
end

p result

# other solution

arr = [['stars', 'river'], 'letter', ['leaves', ['horses', 'table']]]

result = arr.each_with_object([]) do |element1, new_arr|
  if element1.size >= 5
    new_arr << element1
  else
    element1.each do |element2|
      if element2.size >= 5
        new_arr << element2
      else
        element2.each do |element3|
          new_arr << element3
        end
      end
    end
  end
end

p result


