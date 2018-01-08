def prompt(msg)
  puts "=> #{msg}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    "Substracting"
  when '3'
    "multiplying"
  when '4'
    "Dividing"
  end
end

prompt("Welcome to the calculator!")
name = ''
loop do
  prompt("what is your name?")
  name = gets.chomp
  break unless name == ''
  prompt('please enter your name')
end

loop do
  num1 = ''
  loop do
    prompt("Enter your first number")
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt("not a valid number, enter again")
    end
  end

  prompt("Number1 is #{num1}")

  num2 = ''
  loop do
    prompt("Enter your second number")
    num2 = gets.chomp

    if valid_number?(num2)
      break
    else
      prompt("not a valid number, enter again")
    end
  end

  prompt("Number2 is #{num2}")
  operation = ''

  operatior_prompt = <<-MSG
    Enter the operation
    1) add
    2) substract
    3) multiply
    4) division
  MSG
  loop do
    prompt operatior_prompt
    operation = gets.chomp

    if %w(1 2 3 4).include? operation
      break
    else
      prompt('please enter valid operation(1~4)')
    end
  end

  prompt("#{operation_to_message(operation)} two numbers")

  answer = case operation
           when '1'
             num1.to_i + num2.to_i
           when '2'
             num1.to_i - num2.to_i
           when '3'
             num1.to_i * num2.to_i
           when '4'
             num1.to_f / num2.to_f
           end

  prompt("The answer is #{answer}")

  prompt("Do you want to try again?Y/n")

  answer2 = gets.chomp

  break unless answer2.downcase == 'y'
end
prompt "Goodbye!"
