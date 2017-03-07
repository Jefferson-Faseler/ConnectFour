class Board

  def initialize
    @display = Array.new(6) {Array.new(7, '⚫')}
  end

  #column is 1 indexed for user experience
  def place(color, column)
    row_index = @display.transpose[column-1].rindex { |s| s == '⚫' }
    @display[row_index][column-1] = color
  end

  def display
    @display
  end
end
