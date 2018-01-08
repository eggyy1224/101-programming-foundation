
greeting {|i| puts "hi #{i}" }

def greeting
  3.times { |i|yield(i) }
end

