require 'pry'

def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    true
  else
    false
  end
end

def valid_move?(board, input)
  if input.to_i.between?(1,9)
    position = input.to_i - 1
    # binding.pry
    if position_taken?(board, position) || board[position] == nil
      false
    else
      true
    end
  else
    false
  end
end

def move(board, position, char = "X")
  # binding.pry
  board[position - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input.to_i)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
