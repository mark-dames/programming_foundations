def after_midnight(time)
  return 0 if time == '00:00' || time == '24:00'
  number_of_minutes = time.slice(0, 2).to_i * 60 + time.slice(3, 4).to_i
end

def before_midnight(time)
  return 0 if time == '00:00' || time == '24:00'
  number_of_minutes = time.slice(0, 2).to_i * 60 - time.slice(3, 4).to_i
end


puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
