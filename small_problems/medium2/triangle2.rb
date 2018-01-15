def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3].sort
  angle1, angle2, angle3 = angles
  return :invalid unless angle1 + angle2 + angle3 == 180
  angles.each do |angle|
    return :invalid if angle <= 0
    return :obtuse if angle > 90
  end
  return :right if angles.include?(90)
  :acute
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(120, 50, 10)
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid