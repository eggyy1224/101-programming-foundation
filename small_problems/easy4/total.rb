def running_total(arr)
  arr.map.with_index do |_, i|
    sum = 0
    (0..i).each { |num| sum += arr[num] }
    sum
  end
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
p running_total([2, 5, 13])