class Card 
  attr_accessor :suit, :value
  
  SUITS = %w(♣️ ♥️ ♦️ ♠️)
  VALUES = {
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "10" => 10,
    "J" => 11,
    "Q" => 12,
    "K" => 13,
    "A" => 14
  }
    
  
  def initialize(suit, value)
    @suit = suit
    @value = value
  end 
  
  
  def self.suits 
    SUITS 
  end 
  
  def self.keys
    VALUES.keys
  end
  
  def inspect
    "#{self.suit} #{self.value}"
  end
  
  
end