def include?(arr, value)
  boo = false
  arr.each { |ele| boo = true if ele == value }
  boo
  
end

puts include?([1,2,3,4,5], 3) == true

puts include?([1,2,3,4,5], 6) == false

puts include?([], 3) == false
puts include?([nil], nil) == true

puts include?([], nil) == false