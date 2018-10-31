require 'deck'
require 'rspec'

RSpec.describe do 
  subject(:deck) {Deck.new}
  
  describe "Deck" do 
    describe "#initialize"do
      it "initializes with a deck of length 52" do 
        expect(deck.cards.length).to eq(52)
      end
      it "it contains 13 of each suit" do 
        clubs = deck.cards.select { |card| card.suit == '♣️'}.count
        hearts = deck.cards.select { |card| card.suit == '♥️'}.count
        spades = deck.cards.select { |card| card.suit =='♠️'}.count
        diamonds = deck.cards.select { |card| card.suit == '♦️'}.count
        expect([clubs, hearts, spades, diamonds].all? {|el| el == 13}).to eq(true)
      end 
        
      it "contains Card objects" do 
        expect(deck.cards.sample.class).to be(Card)
      end 
    end
  end 
end