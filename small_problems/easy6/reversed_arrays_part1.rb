def reverse!(list)
  index_positive = 0
  index_negative = -1

  loop do
    break if index_positive == list.size / 2
    list[index_positive], list[index_negative] = list[index_negative], list[index_positive]
    index_positive += 1
    index_negative -=1 
  end
  list
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
puts list == ["abc"]

list = []
reverse!([]) # => []
puts list == []

list = %w(mark jan ilse katarina gerrit olga pieter)
reverse!(list)
puts list
