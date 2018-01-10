def prompt(msg)
  puts "=> #{msg}"
end

prompt "What is the bill?"
bill = gets.chomp.to_f
prompt "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip = bill * (tip_percentage / 100)

prompt "the tip is #{tip}"
prompt "total is #{(bill + tip).round(2)}"