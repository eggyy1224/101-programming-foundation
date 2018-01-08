flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}
flintstones.each_with_index do |x, i|
  hash[x] = i
end

p hash