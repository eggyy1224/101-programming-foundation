def substrings_at_start(str)
  substring_arr = []
  1.upto(str.length) { |i| substring_arr << str.slice(0,i) }
  substring_arr
end

def substrings(str)
  substring_arr = []
  str.length.times do 
    substring_arr << substrings_at_start(str)
    str.slice!(0,1)
  end
  substring_arr.flatten
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]