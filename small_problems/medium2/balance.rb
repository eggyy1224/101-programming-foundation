require 'pry'

def balanced?(str)
  left = 0
  right = 0
  str.chars.each do |char|
    if char == '('
      left += 1
    elsif char == ')'
      right += 1
      return false if left - right == -1
    end
        
  end

  right - left == 0 ? true : false
end
puts balanced?(')Hey!(')
puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false

puts balanced?('What ((is))) up(') == false