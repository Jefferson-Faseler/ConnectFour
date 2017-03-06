class Board

  def initialize
    @board = Array.new(6) {Array.new(7, nil)}
  end

  #column is 1 indexed for user experience
  def play(color, column)
    row_index = @board.transpose[column-1].rindex { |s| s == nil }
    @board[row_index][column-1] = color
  end

  def board
    @board
  end
end
