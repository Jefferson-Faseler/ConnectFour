class Game

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
  end

  def turn
    @turn
  end

end
