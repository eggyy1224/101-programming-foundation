DIGITS = ('0'..'9').to_a

def integer_to_string(num)
  result = ''
  loop do
    num, remainder = num.divmod(10)
    result.prepend(DIGITS[remainder])
    break if num == 0
  end
  result
end

def signed_integer_to_string(num)
  return '0' if num == 0
  num.negative? ? integer_to_string(-num).prepend('-') : integer_to_string(num).prepend('+')
end





puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
puts signed_integer_to_string(0)