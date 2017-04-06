def get_grade(number1, number2, number3)
  score = (number1 + number2 + number3) / 3

  case score
    when 90..100 then 'A'
    when 80...90  then 'B'
    when 70...80  then 'C'
    when 60...70  then 'D'
    else               'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
puts get_grade(99, 55, 18) == 'F'

#Further exploration

def get_grade(number1, number2, number3 ,number4 = 0)
  score = (number1 + number2 + number3 + number4) / 3
  return 'A+' if score > 100
  case score  
    when 90..100  then 'A'
    when 80...90  then 'B'
    when 70...80  then 'C'
    when 60...70  then 'D'
    else               'F'
  end
end

puts get_grade(94, 88, 76, 55) == 'A+'
puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
puts get_grade(99, 55, 18) == 'F'

