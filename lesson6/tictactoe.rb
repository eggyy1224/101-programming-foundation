require 'pry'

INITIAL_MARKER = ' '
USER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def user_turn!(brd)
  answer = ''
  loop do
    prompt "Choose a square (#{joinor empty_squares(brd)}): "
    answer = gets.chomp.to_i
    break if empty_squares(brd).include?(answer)
    prompt "Invalid input"
  end
  brd[answer] = USER_MARKER
end

def computer_turn!(brd)
  
  if ready_win?(brd, COMPUTER_MARKER) # 如果電腦已經快贏了就先放會贏的位置
    prompt 'computer ready win'
    square = ready_win?(brd, COMPUTER_MARKER)
  elsif ready_win?(brd, USER_MARKER) # 如果還沒要贏就先block player的路
    prompt 'user ready win'
    square = ready_win?(brd, USER_MARKER)
  else
    prompt 'nothing'
    square = empty_squares(brd).sample
    
  end 

  brd[square] = COMPUTER_MARKER
end

def ready_win?(brd, marker)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2 &&
       brd.values_at(*line).count(' ') == 1
      
      key = case [' ']# 當只差一步就贏了的row內容為" "的key給抓出來備用
            when brd.values_at(line[0])
              line[0]
            when brd.values_at(line[1])
              line[1]
            when brd.values_at(line[2])
              line[2]
            end
      return key
    end
  end
  false
end




def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(USER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(brd, sym = ', ', des = 'or')
  if brd.length >= 2
    last = brd.pop
    "#{brd.join(sym)} #{des} #{last}"
  else
    "#{brd[0]}"
  end
end


score = {user: 0, computer: 0}
loop do
  board = initialize_board
  
  

  loop do
    display_board board

    user_turn! board
    break if someone_won?(board) || board_full?(board)
    computer_turn! board
    break if someone_won?(board) || board_full?(board)
  end

  display_board board

  if someone_won?(board)
    prompt "#{detect_winner(board)} score!"
  else
    prompt "It's a tie!"
  end

  if detect_winner(board) == 'Player'
    score[:user] += 1
  elsif detect_winner(board) == 'Computer'
    score[:computer] += 1
  end

  prompt "User: #{score[:user]}, Computer: #{score[:computer]}"
  if score[:user] == 2
    prompt 'User win the game'
    break
  elsif score[:computer] == 2
    prompt 'Computer win the game'
    break
  end   
end

prompt 'Goodbye!'

