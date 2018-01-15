require 'date'

def friday_13th(year)
  count = 0
  now = Date.new(year)
  while now.year == year
    if now.day == 13 && now.friday?
      count += 1
    end
    now = now.next_day
  end
  count
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2