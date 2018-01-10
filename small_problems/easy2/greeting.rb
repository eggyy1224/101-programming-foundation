def prompt(msg)
  puts "=> #{msg}"
end

prompt "What is your name?"
name = gets.chomp

puts name[name.length - 1] == '!' ? "HELLO #{name.upcase}. WHY ARE WE SCREAMING?" : "Hello #{name}." 