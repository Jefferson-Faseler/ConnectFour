require_relative "../game"
require_relative "../board"

describe Game do
  let(:game) { Game.new }

  describe "game turn" do
    it "is readable" do
      expect(game.turn).to eq('🔴')
    end

    it "changes to other player" do
      game.change_turn
      expect(game.turn).to eq('⚫')
    end
  end

  describe "checks board for winner" do
    describe "if a player has four in a row" do
      # expectation logic here
    end
  end

end
