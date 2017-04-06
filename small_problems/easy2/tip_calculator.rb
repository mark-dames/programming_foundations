print 'What is the bill?'
bill = gets.chomp.to_f

print 'What is the tip percentage?'
tip_percent = gets.chomp.to_f

tip = ((tip_percent / 100) * bill).round(2)
total = (bill + tip).round(2)

puts "The tip is %.2f." % tip
puts "The total is %.2f" % total
