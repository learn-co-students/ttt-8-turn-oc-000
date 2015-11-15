def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, char = 'X')
  board[position.to_i - 1] = char
end

def valid_move?(board, position)
  return false if position.length > 1
  (position_taken?(board, position.to_i) || !(0...9).include?(position.to_i)) ? false : true
end

def position_taken?(board, position)
  board[position] == 'X' || board[position] == 'O' ? true : false
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end
