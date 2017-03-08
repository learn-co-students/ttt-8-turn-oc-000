def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def valid_move?(board, posit)
  
  positInt = posit.to_i
  positInt = positInt -1 
  if (board[positInt] != "X" && board[positInt] != "O") && (positInt>=0 && positInt < 9)
    true 
  else 
    false 
  end
end 


def move (board, posit, char = "X")
  posit = posit.to_i
  posit = posit - 1
  board[posit] = char ; 

end 

def turn(board)
  puts "Please enter 1-9:"
  choice = gets.strip 
  if valid_move?(board, choice)
    move(board, choice)
  else 
    while valid_move?(board, choice) == false 
     puts "Please enter 1-9:"
     choice = gets.strip 
   end 
  
  end 
board = board 
display_board(board)
end 




















