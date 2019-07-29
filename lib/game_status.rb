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
  [6,4,2]
]

def won?(board) 
  WIN_COMBINATIONS.each do |combo| 
    if position_taken?(board, combo[0])
      if board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]]
        return combo
      else
        false
      end
    end
  end
end

def full?(board) 
  board.all?()
end