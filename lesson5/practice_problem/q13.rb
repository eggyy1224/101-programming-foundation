arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort! do |a,b| 
  a = a.select {|ele| ele.odd? }.reduce(:+)
  b = b.select {|ele| ele.odd? }.reduce(:+)
  a <=> b
end

p arr