MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  mins = time.split(':').map.with_index { |ele, i| i == 0 ? ele.to_i * 60 : ele.to_i }.reduce(:+)
  mins = mins % MINUTES_PER_DAY
end

def before_midnight(time)

  mins = time.split(':').map.with_index { |ele, i| i == 0 ? ele.to_i * 60 : ele.to_i }.reduce(:+)
  mins = MINUTES_PER_DAY - mins

  mins = mins % MINUTES_PER_DAY
end




puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts before_midnight('00:00')
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts after_midnight('24:00')
puts before_midnight('24:00') == 0