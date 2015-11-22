def display_board(board)
  display = ""
  board.each_with_index do |value,i|
    display += " #{value} "
    display += (i+1) % 3 == 0 ? "\n-----------\n" : "|"
  end
  puts display
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  move(board,position)
  display_board(board)
end

def move(board, position, player="X")
  if valid_move?(board, position)
    board[position.to_i - 1] = player
  else
    puts "Invalid move."
    turn(board)
  end
end

def valid_move?(board, position)
  position = position.to_i - 1
  on_the_board = position >= 0 && position < 9
  !position_taken?(board,position) && on_the_board
end

def position_taken?(board, position)
  ["X","O"].include?(board[position])
end
