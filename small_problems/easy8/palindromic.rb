require 'pry'

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

def palindromes(str)
  substrings(str).select { |subs| subs == subs.reverse && subs.length != 1 }  
end

puts palindromes('abcd') == []
p palindromes('abcd')
puts palindromes('madam') == ['madam', 'ada']
p palindromes('madam')
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]