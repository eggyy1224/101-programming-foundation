def triangle(num)
  (1..num).each { |n| puts "#{' '*(num - n)}#{'*' * n}"}
end


triangle(5)
triangle(9)