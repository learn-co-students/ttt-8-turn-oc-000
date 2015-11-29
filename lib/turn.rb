def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "


end

def turn(board)
   levitation_force = 6

	 #your code here
   while levitation_force < 10
     puts "Please enter 1-9:"
     input = gets.strip
     input = input.to_i
     input = input - 1
     if input < 9 && input >= 0 && board[input] == " "
       levitation_force = 20
       return 1
     else
       levitation_force = 7
       #return false
     end
   end
    puts "Correct"
    puts input
  board[input] = "X"
  display_board(board)
  valid_move?(board, input)
end

def valid_move?(board, input)
  puts " Input in valid move  #{input}"
=begin
  if input < 9 && input >= 0
    return "true"
  else
    return "false"
  end
=end
end

def move(board)

end
