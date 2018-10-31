require 'card'
require 'rspec'

RSpec.describe do 
  subject(:card) {Card.new("♣️", 3)}
  
  describe "Card" do 
    describe "#initialize" do
      it "initializes with a suit and value" do
        expect(card.suit).to eq("♣️")
        expect(card.value).to eq(3)
      end
    end
  end
end