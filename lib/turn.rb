def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i - 1
  position >= 0 && position <= board.length && !position_taken?(board, position)
end

def position_taken?(board, position)
  chars = ['X', 'O']
  chars.include? board[position]
end

def move(board, position, char = 'X')
  board[position.to_i - 1] = char
end
require 'pry'

def turn(board)
  invalid_input = true
  while invalid_input
    puts "Please enter 1-9:"
    input = gets.strip
    invalid = false if valid_move?(board, input)
  end
  move(board, input)
  display_board(board)
end
