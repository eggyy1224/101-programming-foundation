require 'pry'

def bubble_sort!(arr)
  loop do 
    swaped = false
    arr.each_with_index do |ele, i|
      next if i == 0 
      if arr[i] < arr[i-1]
        
        arr[i], arr[i-1] = arr[i-1], arr[i]
        swaped = true
      end
    end
    break if swaped == false
  end
  arr
end

array = [5, 3]
p bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)