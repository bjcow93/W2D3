require_relative "card"
require_relative "deck"
require_relative "player"
require_relative "hand"

class Game
  attr_accessor :deck, :player
  
  def initialize(deck, player = Player.new("Bob"))
    @deck = Deck.new
    @player = player 
  end
  
end