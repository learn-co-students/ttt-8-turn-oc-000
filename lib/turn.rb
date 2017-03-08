board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ",
       "-----------",
       " #{board[3]} | #{board[4]} | #{board[5]} ",
       "-----------",
       " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = (position.to_i - 1)

  if position.between?(0, 8) && !position_taken?(board, position)
    true
  else false
  end
end

def position_taken?(board, position)
  !(board[position] == "" || board[position] == " " || board[position] == nil)
end

def move(board, position, player = "X")
  board[position.to_i - 1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board,position)
    then
      move(board, position, player = "X")
      display_board(board)
    else
      turn(board)
  end
end
