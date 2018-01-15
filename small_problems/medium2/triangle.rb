def triangle(side1, side2, side3)
  side_arr = [side1, side2, side3].sort
  side1, side2, side3 = side_arr
  # 處理其中一邊小於零的狀況
  side_arr.each do |ele|
    return :invalid if ele <= 0
  end
  #處理兩個小邊加起來小於大邊的狀況
  return :invalid  if side1 + side2 < side3
  #三邊等長
  return :equilateral if side1 == side2 && side2 == side3
  #兩邊等長
  return :isosceles if side1 == side2 || side2 == side3
  #三邊不等長 
  return :scalene if side1 != side2 && side2 != side3
 

end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid