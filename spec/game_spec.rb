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

    it "returns false if not four in a row" do
      expect(game.four_in_row(board.board, '⚪')).to eq false
    end

    describe "returns true or false for different types of four in row" do

      describe "horizontal" do

        it "returns false for no matches" do
          expect(game.horizontal(board.board, '🔴')).to eq false
        end

        it "returns true for a match" do
          4.times do |i|
            x = i + 1
            board.place('🔴', x)
          end
          expect(game.horizontal(board.board, '🔴')).to eq true
          expect(game.horizontal(board.board, '⚪')).to eq false
        end

      end

      describe "vertical" do

        it "returns false for no matches" do
          expect(game.vertical(board.board, '⚪')).to eq false
        end

        it "returns true for a vertical match" do
          4.times do |i|
            x = 2
            board.place('⚪', x)
          end
          expect(game.vertical(board.board, '⚪')).to eq true
          expect(game.vertical(board.board, '🔴')).to eq false
        end

      end

    end

  end

end
