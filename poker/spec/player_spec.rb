require "player"
require "rspec"

RSpec.describe do
  subject(:player) {Player.new("Bob")}
  
  describe "Player" do 
    
    describe "#initialize" do
      it "initializes with a name" do
        expect(player.name).to eq("Bob")
      end
    end
    
  end
  
end