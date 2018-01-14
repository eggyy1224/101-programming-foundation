def light(n)
  lights_on = Hash.new(false)
  (1..n).each { |index| lights_on[index] = false }
  n.times do |index|
    incrementer = index + 1
    while incrementer <= n
      lights_on[incrementer] = !lights_on[incrementer]
      
      incrementer += index + 1 
    end
  end
  lights_on.select { |k, v| v == true }.keys
end

p light(5)
p light(10)
p light(1000)
