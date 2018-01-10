def prompt(msg)
  puts "=> #{msg}"
end
arr = []

prompt "Enter the 1st number:"
arr << gets.chomp.to_i
prompt "Enter the 2nd number:"
arr << gets.chomp.to_i
prompt "Enter the 3rd number:"
arr << gets.chomp.to_i
prompt "Enter the 4th number:"
arr << gets.chomp.to_i
prompt "Enter the 5th number:"
arr << gets.chomp.to_i
prompt "Enter the last number:"
num = gets.chomp.to_i

puts arr.include?(num) ? "The number #{num} appears in #{arr}." : 
"The number #{num} does not appears in #{arr}."



