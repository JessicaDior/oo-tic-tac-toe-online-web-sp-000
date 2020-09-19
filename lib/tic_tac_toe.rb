class TicTacToe

WIN_COMBINATIONS = [
[0, 1, 2],
[3, 4, 5], #Middle row
[6, 7, 8], #Bottom row
[0, 3, 6], #Left row
[1, 4, 7], #Middle row
[2, 5, 8], #Right row
[0, 4, 8], #Left diagonal
[2, 4, 6] #Right diagonal
]

def initialize
  @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
end


def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(index, current_player)
  @board[index] = current_player
end

def position_taken?(index)
  if (@board[index] == " ") || (@board[index] == "") || (@board[index] == nil)
  return false
else
  return true
end
end

def valid_move?(index)
  if index.between?(0,  8) && !position_taken?(@board, index)
  return true
end
end

end
