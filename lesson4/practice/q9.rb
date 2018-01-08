def titlezie(words)
  words.split.map { |word| word.capitalize }.join(' ')

end

words = "the flintstones rock"
p titlezie(words)