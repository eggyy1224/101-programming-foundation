WORD_TO_DIGITS = [ 'zero', 'one', 'two', 'three', 
  'four', 'five', 'six', 'seven', 'eight', 'nine']
def word_to_digit(str)
  
  WORD_TO_DIGITS.each do |word|
    str.gsub!(/#{word}/, WORD_TO_DIGITS.index(word).to_s)
  end
  str
end


puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
puts word_to_digit('Please call me at five five five one two three four. Thanks.')
