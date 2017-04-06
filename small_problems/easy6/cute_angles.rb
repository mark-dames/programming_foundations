def dms(decimal)
  degree = decimal.to_i
  minute = (((decimal - degree) * 60).round(2).to_i).abs
  second = (decimal.abs - degree.abs - minute.to_f / 60) * 3600
  %(#{degree}°%02d'%02d") % [minute, second]
end


puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(30.5) == %(30°30'00")
puts dms(-30.5) == %(-30°30'00")
puts dms(-76.73)
