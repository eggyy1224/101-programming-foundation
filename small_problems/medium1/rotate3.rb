def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n_digits)
  number = number.to_s
  remain = rotate_array(number.to_s.slice!(-n_digits, n_digits).chars).join
  (number + remain).to_i
end

def max_rotation(num)
  digit_size = num.to_s.length
  digit_size.downto(2) do |n|
    num = rotate_rightmost_digits(num, n)
  end
  num
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845