require 'pry'

def letter_percentages(str)
  percentage = { lowercase: 0, uppercase: 0, neither: 0 }
  base = str.size
  up_amount = 0
  down_amount = 0
  other_amount = 0
  str.chars.each do |char|
    if char.match?(/[A-Z]/)

      up_amount += 1
    elsif char.match?(/[a-z]/)
      down_amount += 1
    else    
      other_amount += 1
    end
  end
  
  percentage[:lowercase] = (down_amount.to_f / base) * 100
  percentage[:uppercase] = (up_amount.to_f / base) * 100
  percentage[:neither] = (other_amount.to_f / base) * 100

  percentage

end

p letter_percentages('abCdef 123')
puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }