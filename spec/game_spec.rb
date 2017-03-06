require_relative "../game"

describe Game do
  let(:game) { Game.new }

  it "has a turn" do
    expect(game.turn).to eq('red')
  end
end
