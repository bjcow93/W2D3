require 'card'
require 'rspec'

RSpec.describe do 
  subject(:card) {Card.new("clubs", 3)}
  describe "#initialize" do
    it "initializes with a suit and value" do
      expect(card.suit).to eq("clubs")
      expect(card.value).to eq(3)
    end
  end
end