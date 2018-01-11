require 'pry'

def swap(str)
  str.split.map do |ele|
    
    ele = ele.chars
    first = ele.shift
    last = ele.pop
    "#{last}#{ele.join}#{first}"
  end.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Oh what a wonderful day it is')
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'