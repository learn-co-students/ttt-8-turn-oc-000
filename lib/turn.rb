def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "


end

def turn(board)
  levitation_force = false
  while levitation_force != true
     puts "Please enter 1-9:"
     input = gets.strip
     position = input.to_i
    puts "Turn Checker position is #{input}"
    levitation_force = valid_move?(board, input)
  end
  puts "I entered #{position} in response to the gets prompt."
  board[position - 1] = "X"
  display_board(board)

end

def valid_move?(board, position)
  position = position.to_i
  position = position  - 1
  if position >= 0 && position <= 8 && board[position] != "X" && board[position] != "O"
    return true
  else
    return false
  end
end

def move(board, input, position = "X")
  input = input.to_i
  input = input - 1
  puts "In move"
  board[input] = position
  display_board(board)
end

