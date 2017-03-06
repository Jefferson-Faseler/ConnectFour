require_relative "../board"

describe Board do
  let(:board) { Board.new }

  it "starts as 6 X 7 board of empty values" do
    expect(board.board).to eq([
        [nil, nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil, nil]
        ])
  end

  describe "playing on the board" do
    it "changes the bottom-most value of column" do
      board.play('🔴', 3)
      expect(board.board).to eq([
          [nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, nil, nil, nil, nil, nil],
          [nil, nil, '🔴', nil, nil, nil, nil]
          ])
    end

      it "does not change a slot already occupied" do
        board.play('🔴', 3)
        board.play('⚫', 3)
        expect(board.board).to eq([
            [nil, nil, nil, nil, nil, nil, nil],
            [nil, nil, nil, nil, nil, nil, nil],
            [nil, nil, nil, nil, nil, nil, nil],
            [nil, nil, nil, nil, nil, nil, nil],
            [nil, nil, '⚫', nil, nil, nil, nil],
            [nil, nil, '🔴', nil, nil, nil, nil]
            ])
      end
  end
end
