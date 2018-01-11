def reverse(arr)
  arr = arr.clone
  mid = arr.length/2 -1

  counter = 0
  while counter <= mid

    arr[counter], arr[arr.length-1-counter] = arr[arr.length-1-counter], arr[counter]
    
    counter += 1
  end
  arr
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

p list = [1, 2, 3]                      # => [1, 2, 3]
puts new_list = reverse(list)              # => [3, 2, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 2, 3]                     # => true
puts new_list == [3, 2, 1]                 # => true