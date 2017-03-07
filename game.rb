class Game

  attr_reader :turn

  def initialize
    @turn = '🔴'
  end

  def change_turn
    if @turn == '🔴'
      @turn = '⚪'
    elsif @turn == '⚪'
      @turn = '🔴'
    end
  end

  def four_in_row(board, color)
    four_of_color = color * 4
    board.each do |line|
      return true if line.join('').include?(four_of_color)
    end
    return false
  end

  def winner?(board, color)
    if horizontal(board.display, color) == true
      return true
    elsif vertical(board.transpose, color) == true
      return true
    elsif left_diagonal(board.left_diagonal_transpose, color) == true
      return true
    elsif right_diagonal(board.right_diagonal_transpose, color) == true
      return true
    else
      return false
    end
  end

  def horizontal(board, color)
    four_in_row(board, color)
  end

  def vertical(board, color)
    four_in_row(board, color)
  end

  def right_diagonal(board, color)
    four_in_row(board, color)
  end

  def left_diagonal(board, color)
    four_in_row(board, color)
  end

end
