# Helper Method
def position_taken?(board, space)
  !(space.nil? || space == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8],
  [0, 3, 6], [1, 4, 7], [2, 5, 8],
  [0, 4, 8], [2, 4, 6]]
  
def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if combo.all?{|space| space == "X"} || combo.all?{|space| space == "O"}
      return combo
    end
  end
  return nil
end

def full?(board)
  board.all?{|space| position_taken?(board, space)}
end