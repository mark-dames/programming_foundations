def triangle(n)
  amount_of_spaces = n - 1
  amount_of_stars = 1

  loop do
    break if amount_of_stars > n
    puts ' ' * amount_of_spaces +  '*' * amount_of_stars
    amount_of_spaces -= 1 
    amount_of_stars += 1
  end
end



triangle(5)
triangle(9)
triangle(3)

# triangle upside down

def triangle(n)
  amount_of_spaces = n - 1
  amount_of_stars = 1

  loop do
    break if amount_of_stars > n
    puts '*' * amount_of_stars + ' ' * amount_of_spaces
    amount_of_spaces -= 1 
    amount_of_stars += 1
  end
end

triangle(5)
triangle(9)
triangle(3)
