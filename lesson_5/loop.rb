loop do
  number = rand(1..10)
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end

# every time a different amout of puts hello is executed based on the random number which number gives. 
# if number gives 5 then 5 times puts hello is printed and then the loop stops ebcause we when number == 5 we break.
