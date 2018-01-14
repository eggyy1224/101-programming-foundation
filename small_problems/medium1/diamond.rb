def diamond(n)
  star = Array.new(n, ' ')
  mid = n / 2 
  # upper part
  0.upto(mid) do |index|
    star[mid] = '*'
    star[mid - index] = '*'
    star[mid + index] = '*'
    puts star.join
  end
  # down part
  (mid).downto(0) do |index|
    star[mid - index] = ' '
    star[mid + index] = ' '
    puts star.join unless star[mid]==' '
  end 

end

diamond(5)
diamond(9)