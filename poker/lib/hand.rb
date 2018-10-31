require_relative "card"
require_relative "deck"

class Hand
  attr_accessor :cards
  
  def initialize
    @cards = []
  end
end 