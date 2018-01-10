def century(year)
  century = ''
  year % 100 == 0 ? century += (year / 100).to_s : century += (year / 100 + 1).to_s
  suffix!(century)
  century
end

def suffix!(str)
  suffix = case str.slice(-2, 2)
           when '01'
            'st'
           when '02'
            'nd'
           when '03'
            'rd'
           else
            'th'
           end
  suffix = 
  str.concat(suffix)
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

puts century(1052)