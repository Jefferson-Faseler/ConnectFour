class Board

  attr_reader :display

  def initialize
    @display = Array.new(6) {Array.new(7, '⚫')}
  end

  #column is 1 indexed for user experience
  def place(color, column)
    row_index = @display.transpose[column-1].rindex { |s| s == '⚫' }
    @display[row_index][column-1] = color
  end

  def transpose
    @display.transpose
  end

  def right_diagonal_transpose
    i = 0
    diagonal_length = ((@display.length) + (@display[0].length) - 1)
    r_diagonally_transposed = Array.new(diagonal_length) {Array.new}
    @display.each do |row|
      row.each_with_index do |slot, index|
        index += i
        r_diagonally_transposed[index] << slot
      end
      i += 1
    end
    r_diagonally_transposed
  end

  def left_diagonal_transpose
    i = -1
    diagonal_length = ((@display.length) + (@display[0].length) - 1)
    l_diagonally_transposed = Array.new(diagonal_length) {Array.new}
    @display.each do |row|
      row.each_with_index do |slot, index|
        index += i
        l_diagonally_transposed[index] << slot
      end
      i -= 1
    end
    l_diagonally_transposed.rotate(6)
  end

end
