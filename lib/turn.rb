# code your #valid_move? method here
def valid_move?(board, input)
  if input.to_i().between?(1,9) && !(position_taken?(board, input.to_i()-1))
    true
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if (board[position] == "X" || board[position] == "O")
    true
  end
end
# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  divider = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts divider
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts divider
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, token = "X")
  board[position.to_i() -1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip()
  if valid_move?(board,input)
    move(board,input, "X")
    display_board(board)
  else
    turn(board)
  end

end
