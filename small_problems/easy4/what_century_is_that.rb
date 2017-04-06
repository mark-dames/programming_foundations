
def suffix(century)
  return 'th' if century % 100 == 11 || century % 100 == 12 || century % 100 == 13

  last_digit = century.to_s[-1].to_i

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else        'th'
  end
end

def century(year)
  last_digit = year % 10
  if last_digit == 0
    century = year / 100
  else
    century = year / 100 + 1
  end
  century.to_s + suffix(century)
end


puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
