require 'date'


def friday_13th?(year)
  friday_13th = 0
  1.upto(12) do |month|
    weekday = Date.new(year, month, 13).cwday
    friday_13th += 1 if weekday == 5 
  end
  friday_13th
end

 puts friday_13th?(2015) == 3
 puts friday_13th?(1986) == 1
 puts friday_13th?(2019) == 2
 puts friday_13th?(2016) == 1
