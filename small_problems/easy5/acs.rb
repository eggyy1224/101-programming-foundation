def ascii_value(str)
  return 0 if str == ''
  str.chars.map { |char| char.ord }.reduce(:+)
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
puts ascii_value('')