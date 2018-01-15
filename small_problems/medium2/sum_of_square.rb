def sum_square_difference(num)
  first = 0
  last = 0
  1.upto(num) do |i|
    first += i
    last += i**2
  end
  first**2 - last

end


puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150