def featured(integer)
  integer += 1
  integer += 1 until integer % 7 == 0 && integer.odd?
  loop do 
    return integer if integer.to_s.chars.uniq == integer.to_s.chars
    integer += 14
    break if integer >= 9_876_543_210
  end
  'There is no possible number that fulfills those requirements.'
end

puts featured(12) == 21
puts featured(12)
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements