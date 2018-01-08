def multiply(arr, i)
  processed_arr = []
  counter = 0

  loop do 
    break if counter == arr.size
    processed_arr << arr[counter] * i
    counter += 1
  end
  processed_arr
end


my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]