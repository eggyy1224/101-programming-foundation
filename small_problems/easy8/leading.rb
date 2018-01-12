def substrings_at_start(str)
  substring_arr = []
  1.upto(str.length) { |i| substring_arr << str.slice(0,i) }
  substring_arr
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('abc')
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']