require 'rspec'
require 'tdd'

RSpec.describe do 
  describe "#my_uniq" do 
    it "should remove duplicates" do 
      dup = [1, 2, 1, 3, 3].my_uniq
      expect(dup).to eq([1,2,3])
    end 
  end 
  
  describe "#two_sum" do
    it "should find all pairs of positions where the elements at those positions sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end 
    it "should be in the correct order" do
      expect([-1, 0, 2, -2, 1].two_sum[0]).to eq([0, 4])
      expect([-1, 0, 2, -2, 1].two_sum[1]).to eq([2, 3])
    end 
  end
end 
