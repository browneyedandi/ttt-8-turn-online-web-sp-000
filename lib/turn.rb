def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------" 
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------" 
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

board = [" "," "," "," "," "," "," "," "," "]

end

def input_to_index(user_input)
  user_input.to_i - 1
end


def valid_move?(board, index)
   if !position_taken?(board, index) && index.between?(0,8)
      return true
   end
end

def position_taken?(board, index)
    if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      return false 
    else
      return true
   end
end


def move(board, index, value = "X")
  return board[index] = value 
end
  
 
 
 def turn(board)
   puts "Please enter 1-9:"
   user_input = gets.chomp
   index = input_to_index(user_input)
   if !valid_move?(board, index) 
   turn(board)
 else
   move(board, index, value = "X")
   end
   display_board(board)
 end
    

   




