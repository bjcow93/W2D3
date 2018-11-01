require "hand"
require "rspec"

RSpec.describe do
  describe "Hand" do
    subject(:hand) {Hand.new}
    describe "#initialize" do
      it "initalizes hand with an empty array" do
        expect(hand.cards).to eq([])
      end
    end
    describe "#take_card" do 
      it "takes the specified number of cards from the deck"
    end
    describe "#high_card" do 
      it "returns the highest card in the hand"
    end 
  end
end