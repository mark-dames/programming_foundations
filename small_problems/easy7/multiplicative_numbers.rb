def show_multiplicative_average(integers)
  sum = integers.reduce(:*)
  avarage = (sum.to_f / integers.size)
  puts 'The result is %.3f' % avarage
end


show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
