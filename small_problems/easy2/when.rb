require 'date'

def prompt(msg)
  puts "=> #{msg}"
end

prompt "What is your age?"
age = gets.chomp.to_i
prompt "At what age would you like to retire?"
retire_age = gets.chomp.to_i

current_year = Date.today.year

work_year = retire_age - age

prompt "It's #{current_year}. You will retire in #{current_year + work_year}"
prompt "You have only #{work_year} years of work to go!"