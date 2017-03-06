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

  def turn
    @turn
  end

end
