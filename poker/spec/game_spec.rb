require "game"
require "rspec"

RSpec.describe do
  
  describe "Game" do
    subject(:game) {Game.new(Deck.new)}
    
    describe "#initialize" do
      
      it "initializes with a deck and a player" do
        expect(game.deck.class).to be(Deck)
        expect(game.player.class).to be(Player)
      end
      
    end
  end
end