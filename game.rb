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
    return false
  end

  def horizontal(board, color)
    four_in_row(board, color)
  end

  def vertical(board, color)
    four_in_row(board.transpose, color)
  end

  def right_diagonal(board, color)
    right_diagonal_transpose(board, color)
  end

  def left_diagonal(board, color)
    left_diagonal_transpose(board, color)
  end

  def right_diagonal_transpose(board, color)
    i = 0
    diagonal_length = ((board.length) + (board[0].length) - 1)
    r_diagonally_transposed = Array.new(diagonal_length) {Array.new}
    board.each do |row|
      row.each_with_index do |slot, index|
        index += i
        r_diagonally_transposed[index] << slot
      end
      i += 1
    end
    four_in_row(r_diagonally_transposed, color)
  end

  def left_diagonal_transpose(board, color)
    i = -1
    diagonal_length = ((board.length) + (board[0].length) - 1)
    l_diagonally_transposed = Array.new(diagonal_length) {Array.new}
    board.each do |row|
      row.each_with_index do |slot, index|
        index += i
        l_diagonally_transposed[index] << slot
      end
      i -= 1
    end

    four_in_row(l_diagonally_transposed, color)
  end

  def turn
    @turn
  end

end
