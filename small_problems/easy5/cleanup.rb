def cleanup(str)
  str.gsub(/[\W]+/, ' ')
end

def cleanup2(str)
  new_str = []
  str.chars.each do |char|
    [*('a'..'z'),*['A'..'Z']].include?(char) ? new_str << char : new_str << ' '
  end
  new_str.join.squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
puts cleanup2("---what's my +*& line?") == ' what s my line '