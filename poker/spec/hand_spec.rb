require "hand"
require "rspec"

RSpec.describe do
  describe "Hand" do
    subject(:hand) {Hand.new}
    describe "#initialize" do
      it "initalizes hand with an empty array" do
        expect(hand.cards).to eq([])
      end
    end
  end
end