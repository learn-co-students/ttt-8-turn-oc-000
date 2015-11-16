def turn(board)
    puts "Please enter 1-9:"
    input = gets
    while valid_move?(board, input) == false
      puts "Please try another number:"
      input = gets
      print " #{board}"
    end
    user = "X"
    move(board,input.to_i,user)
    display_board(board)
end

def display_board(board)
  board.each_with_index do |item, index|
    print " #{item} " 
    if (index.to_i == 2) or (index.to_i == 5) 
      print " \n-----------\n"
    elsif index.to_i == 8
      print "\n"
    else
      print "|"
    end
  end
end

def valid_move?(board, position)
      if position.to_s.length > 3
        return false
      elsif position.to_i > board.size
        return false
      elsif  position_taken?(board, position.to_i-1) == true
        return false
      else
        return true
      end
end

def position_taken?(board, position)
  position = position.to_i
  if board[position] == "X"
    return true
  elsif board[position] == "O"
    return true
  elsif board[position] == " " || board[position] == "" || board[position] == nil
    return false
  end
end

def move(board, position, user)
  board[position-1] = user
end

