UPCASE = ('A'..'Z').to_a
DOWNCASE = ('a'..'z').to_a
LETTER_TABLE = UPCASE.zip(DOWNCASE).to_h
LETTER_TABLE[' '] = ' '

def swapcase(str)
  str.chars.map do |char|
    if char.match?(/[a-zA-Z]/) 
      char.match?(/[A-Z]/) ? LETTER_TABLE[char] : LETTER_TABLE.key(char)
    else
      char
    end
  end.join 
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'