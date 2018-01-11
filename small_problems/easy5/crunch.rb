def crunch(str)
  new_str = []
  new_str << str.chars[0]
  str.chars.each_with_index do |char, i|
    next if i == 0
    new_str << char unless str.chars[i] ==  str.chars[i-1]
  end
  new_str.join
end



puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('ddaaiillyy ddoouubbllee')
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''