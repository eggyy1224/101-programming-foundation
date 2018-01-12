def show_multiplicative_average(arr)
  format('%.3f', arr.reduce(:*) / arr.size.to_f)
end

puts show_multiplicative_average([3, 5]) == 7.500
puts show_multiplicative_average([3, 5])
#The result is 7.500

puts show_multiplicative_average([6]) == 6.000
#The result is 6.000

puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 28361.667

puts show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667