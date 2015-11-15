def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, position, character = "X")
  position_index = position.to_i - 1
  board[position_index] = character
  display_board(board)
end

# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i - 1
  if position_taken?(board, position)
    false
  elsif position < 9 && position >= 0
    true
  else
    false
  end
    
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if !board.empty? && board[position] && (board[position].include?("X") || board[position].include?("O"))
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  until valid_move?(board, input)
    puts "Please enter 1-9:"
    input = gets.strip
  end
  move(board, input)
end