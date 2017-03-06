require_relative "../game"

describe Game do
  let(:game) { Game.new }

  describe "game turn" do
    it "is readable" do
      expect(game.turn).to eq('red')
    end

    it "changes to other player" do
      game.change_turn
      expect(game.turn).to eq('black')
    end
  end

end
