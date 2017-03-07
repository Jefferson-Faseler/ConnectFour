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
    if four_in_row(board.display, color) == true
      return true
    elsif four_in_row(board.transpose, color) == true
      return true
    elsif four_in_row(board.left_diagonal_transpose, color) == true
      return true
    elsif four_in_row(board.right_diagonal_transpose, color) == true
      return true
    else
      return false
    end
  end

end
