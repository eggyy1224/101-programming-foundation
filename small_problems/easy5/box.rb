def print_in_box(str)

  puts "+#{'-' * str.length}-+"
  puts "|#{' ' * str.length} |"
  puts "|#{str} |"
  puts "|#{' ' * str.length} |"
  puts "+#{'-' * str.length}-+"
end

print_in_box('To boldly go where no one has gone before.')

def print_in_box2(str)
  len = str.length >= 50 ? 50 : str.length
  str2 = ''
  if str.length >= 50
    str2 = str.slice!(0, 50)
    while str.length < 50
      str << ' '
    end
  end
  

  puts "+#{'-' * len}-+"
  puts "|#{' ' * len} |"
  puts "|#{str2} |" unless str2 == ''
  puts "|#{str} |" 
  puts "|#{' ' * len} |"
  puts "+#{'-' * len}-+"
end
print_in_box2('To boldly go where no one has gone before.'+
 'To boldly go where no one has gone before.')
print_in_box2('To boldly go where no one has gone before.')