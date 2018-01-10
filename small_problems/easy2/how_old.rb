def how_old(name = "Teddy")
  age = (20..200).to_a.sample
  puts "#{name} is #{age} years old!"
end

how_old
how_old('frank')