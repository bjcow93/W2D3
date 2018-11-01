require_relative "card"
require_relative "deck"

class Hand
  attr_accessor :cards
  
  def initialize(deck)
    @cards = []
    @deck = deck
  end
  
  def take_card(num)
    num.times {@cards << @deck.cards.pop}
  end
  
  def high_card
    @cards.sort_by { |card| Card::VALUES[card.value]}.last
  end
end 

if __FILE__ == $PROGRAM_NAME
  deck = Deck.new
  deck.shuffle_deck
  hand = Hand.new(deck)
  hand.take_card(5)
  p hand.cards
  p hand.high_card
end
