sentence = 'The sky was blue'
#change_case(sentence, :snake) # => 'the_sky_was_blue'



def snake(str)
  words = str.split
  current_word = 0

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end

def camel(str)
  words = str.split(' ')
  counter = 0

  while words.size > counter
    words[counter] = words[counter].capitalize

    counter = counter + 1
  end

  words.join
end

def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    
    break if current_word == words.size

    words[current_word].upcase!
    current_word += 1
  end

  words.join('_')
end

def change_case(sentence, new_case)
  case new_case
  when :snake
    snake(sentence)
  when :camel
    camel(sentence)
  when :upper_snake
    upper_snake(sentence)
  else
    puts 'Invalid case type'
  end
end

p snake(sentence)

p camel(sentence)

p upper_snake(sentence)
