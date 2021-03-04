# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant


WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]
  
def won?(board)
  if empty_board?(board)
    return nil
  else
    WIN_COMBINATIONS.each do |win_combo| 
      if win_combination?(board, win_combo)
        return win_combo
      end
    end
    return false
  end
end

def draw?(board)
  
end


def full?(board)
  empty = board.select { |space| (space == "" || space == " ")  }
  if empty
    return false
  else
    return true
  end
end









def win_combination?(board, indexes)
  if (board[indexes[0]] == "X" && board[indexes[1]] == "X" && board[indexes[2]] == "X") || (board[indexes[0]] == "O" && board[indexes[1]] == "O" && board[indexes[2]] == "O") 
    return true
  end
end

def empty_board?(board)
  counter = 0
  board.each do |space|
    if (space != "X" && space != "O")
      counter +=1
    end
  end
  if counter == 9
    return true
  else 
    return false
  end
end









    