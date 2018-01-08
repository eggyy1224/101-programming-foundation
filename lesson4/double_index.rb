def double_odd_index(arr)
  doubled_arr = []
  counter = 0
  loop do
    break if counter == arr.size
    if counter.odd?
      doubled_arr << arr[counter] *2
    else
      doubled_arr << arr[counter]
    end
    counter += 1 
  end
  doubled_arr
end

my_numbers = [1, 4, 3, 7, 2, 6]
p my_numbers
p double_odd_index(my_numbers)