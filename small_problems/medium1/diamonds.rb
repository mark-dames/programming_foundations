def print_diamond(n)
    amount_spaces = ((n - 1 ) / 2)
    1.step(n-2, 2) do |num|
      puts ' ' * amount_spaces + '*' * num
      amount_spaces -= 1
    end
    (n).step(1, -2) do |num|
      puts ' ' * amount_spaces + '*' * num
      amount_spaces += 1
    end
end

print_diamond(1)
print_diamond(3)
print_diamond(5)
print_diamond(9)
print_diamond(11)

#futher exploration
def print_diamond(n)
    amount_spaces = ((n - 1 ) / 2)
    amount_of_middle_spaces = 0
    1.step(n-2, 2) do |num|
      if num == 1
        puts ' ' * amount_spaces + '*' 
        amount_spaces -= 1
        amount_of_middle_spaces += 1
      else
        puts ' ' * amount_spaces + '*' + ' ' * amount_of_middle_spaces + '*'
        amount_spaces -= 1
        amount_of_middle_spaces += 2
      end
    end
    (n).step(1, -2) do |num|
      if num == 1
        puts ' ' * amount_spaces + '*'
      else
        puts ' ' * amount_spaces + '*' + ' ' * amount_of_middle_spaces + '*'
        amount_spaces += 1
        amount_of_middle_spaces -= 2
      end
    end
end

print_diamond(1)
print_diamond(3)
print_diamond(5)
print_diamond(9)
print_diamond(11)
