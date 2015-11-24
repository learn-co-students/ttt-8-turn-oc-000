#A turn of Tic Tac Toe is composed of the following routine:

#Asking the user for their move by position 1-9.
#Receiving the user input.
#If the move is valid, make the move.
#If the move is invalid, ask for a new move until a valid move is received.
#Display the board after the valid move has been made.




def turn(board)
  truthy = false
  until(truthy == true)
    puts "Please enter 1-9:"
    spotcheck = gets.strip
    truthy = valid_move?(board, spotcheck)
  end

  move(board, spotcheck)
  display_board(board)

end

#display_board
#should accept a board as an argument and print out the current state of the board for the user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move?
#Shoudl accept a board and a posn from the user (user will put 1-9 but its really 0-8)
#Should return true if position is within correct range of 1-9 AND is unocc by an X or O
#HINT: might want to encapsulate position taken method separately?
def valid_move?(board, posn_str, team = "X")
  posn = posn_str.to_i
  posn -= 1
  if ((posn.between?(0,8)) && !(position_taken?(board,posn)))
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  spot = board[position]
  if((spot == " ") || (spot == "") || (spot == nil))
    return false
  elsif ((spot == "X") || (spot == "O"))
    return true
  end
end


#move
#method should accept a board, a posn from user (1-9 format), and token to mark posn (default X)
#Method should set correct index value of posn with board = token
def move(board, input, team = "X")
  board[input.to_i - 1] = team
  return board
end
