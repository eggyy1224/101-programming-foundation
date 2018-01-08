arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
new_arr = []
arr.each do |arr|
  temp_arr = []
  arr.each do |int|
    temp_arr << int if int % 3 == 0
  end
  new_arr << temp_arr
end

p new_arr