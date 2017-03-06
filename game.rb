class Game

  def initialize
    @turn = 'red'
  end

  def change_turn
    if @turn == 'red'
      @turn = 'black'
    elsif @turn == 'black'
      @turn = 'red'
    end
  end

  def turn
    @turn
  end

end
