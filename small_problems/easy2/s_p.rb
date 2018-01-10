def prompt(msg)
  puts "=> #{msg}"
end

prompt "Please enter an integer greater than 0:"
num = gets.chomp.to_i
prompt "Enter 's' to compute the sum, 'p' to compute the product."
act = gets.chomp
arr = []
num.times do
  arr << num
  num -= 1
end

if act == 's'
  puts arr.reduce(:+)
elsif act == 'p'
  puts arr.reduce(1, :*)
end