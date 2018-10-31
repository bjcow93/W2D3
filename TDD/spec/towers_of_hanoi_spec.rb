require 'rspec'
require 'towers_of_hanoi'
require 'byebug'

RSpec.describe do 
  subject(:game) { Towers.new }
  
  describe "#initialize" do 
    it "initializes with a towers instance variable" do 
      expect(game.towers.length).to eq(3)
      expect(game.towers[0]).to eq([3,2,1])
    end
  end
  
  describe "#won?" do
    context "when the game is over" do 
      it "returns true" do
        game.towers = [[], [3,2,1], []]
        expect(game.won?).to eq(true)
        game.towers = [[], [], [3,2,1]]
        expect(game.won?).to eq(true)
      end
    end
    context "when the game is not over" do
      it "should return false" do
        game.towers = [[1],[2],[3]]
        expect(game.won?).to eq(false)
        game.towers = [[3],[2],[1]]
        expect(game.won?).to eq(false)
      end
    end
      
  end
  
  describe "#move" do 
    it "should move a disk to an empty tower" do 
      game.move([0,2])
      expect(game.towers).to eq([[3,2], [], [1]])
    end
    it "should successfully move smaller disc onto large disc" do
      game.move([0,2])
      game.move([0,1])
      game.move([2,1])
      expect(game.towers).to eq([[3], [2,1], []])
    end
     
  end
  
  
  
  
  
   
end 