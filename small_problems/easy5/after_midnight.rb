require 'time'
require 'date'

def time_of_day(integer)
  hours, minutes = integer.divmod(60)
  hours = hours % 24

  "%.2d:%.2d" % [hours, minutes]
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
puts time_of_day(3) == "00:03"

# futher exploration

WEEKDAYS = %w(saturday sunday monday thuesday wednesday thursday friday)
def time_of_day(integer)
  seconds = integer * 60
  time = Time.at(seconds).strftime("%H:%M") 
  date = (integer / 60 / 24) % 7
  date = WEEKDAYS[date]
  puts "#{date} #{time}"
end

puts time_of_day(3000)
puts time_of_day(-4231)
puts time_of_day(-3)
puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
puts time_of_day(3) == "00:03"
