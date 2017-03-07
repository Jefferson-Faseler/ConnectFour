require_relative "../game"
require_relative "../board"

describe Game do
  let(:game) { Game.new }
  let(:board) { Board.new }

  describe "game turn" do
    it "is readable" do
      expect(game.turn).to eq('🔴')
    end

    it "changes to other player" do
      game.change_turn
      expect(game.turn).to eq('⚪')
    end
  end

  describe "checks board for winner" do

    it "detects four in a row" do
      4.times do |i|
        x = i + 1
        board.place('⚪', x)
      end
      expect(game.four_in_row(board.board, '⚪')).to eq true
    end

    it "returns false if no four in a row" do
      expect(game.four_in_row(board.board, '⚪')).to eq false
    end

    describe "if a player has four in a row returns true for" do

      it "horizontal" do
        4.times do |i|
          x = i + 1
          board.place('🔴', x)
        end

        expect(game.horizontal(board.board, '🔴')).to eq true
      end

    end

    describe

  end

end
