require 'pry'
def reverse!(arr)

  mid = arr.length/2 -1

  counter = 0
  while counter <= mid

    arr[counter], arr[arr.length-1-counter] = arr[arr.length-1-counter], arr[counter]
    
    counter += 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
puts list == ["abc"]

list = []
reverse!(list) # => []
puts list == []