require_relative "../board"

describe Board do
  let(:board) { Board.new }

  it "starts as 6 X 7 board of empty values" do
    expect(board.display).to eq([
        ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
        ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
        ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
        ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
        ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
        ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫']
        ])
  end

  describe "placing on the board" do
    it "changes the bottom-most value of column" do
      board.place('🔴', 3)
      expect(board.display).to eq([
          ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
          ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
          ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
          ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
          ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
          ['⚫', '⚫', '🔴', '⚫', '⚫', '⚫', '⚫']
          ])
    end

    it "does not change a slot already occupied" do
      board.place('🔴', 3)
      board.place('⚪', 3)
      expect(board.display).to eq([
          ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
          ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
          ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
          ['⚫', '⚫', '⚫', '⚫', '⚫', '⚫', '⚫'],
          ['⚫', '⚫', '⚪', '⚫', '⚫', '⚫', '⚫'],
          ['⚫', '⚫', '🔴', '⚫', '⚫', '⚫', '⚫']
          ])
    end
  end
end
