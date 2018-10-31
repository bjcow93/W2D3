require_relative 'card'

class Deck
  attr_accessor :deck 
  
  def initialize
    @deck = []
    populate_deck
  end
  
  def populate_deck
    Card.suits.each do |suit|
      Card.keys.each do |val|
        @deck << Card.new(suit, val) 
      end 
    end 
  end
end

if __FILE__ == $PROGRAM_NAME
  deck = Deck.new
  p deck.deck 
end
