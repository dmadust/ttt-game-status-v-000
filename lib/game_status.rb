# Helper Method
def position_taken?(space)
  !(space.nil? || space == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8],
  [0, 3, 6], [1, 4, 7], [2, 5, 8],
  [0, 4, 8], [2, 4, 6]]
  
def won?(board)
  WIN_COMBINATIONS.each do |combo|
    position0 = board[combo[0]]
    position1 = board[combo[1]]
    position2 = board[combo[2]]
    
    if (position0 == "X" && position1 == "X" && position2 == "X") ||
      (position0 == "O" && position1 == "O" && position2 == "O")
      return combo
    end
  end
  return nil
end

def full?(board)
  board.all?{|space| position_taken?(board, space)}
end