def halvsies(arr)
  
  arr2 = []
  mid = arr.length.odd? ? arr.length / 2 + 1 : arr.length/2
  arr2 = arr.slice!(0, mid)
  [arr2, arr]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 2, 3, 4])
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]