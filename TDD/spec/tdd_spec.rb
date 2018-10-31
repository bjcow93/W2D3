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
  
  describe "#my_transpose" do 
    array = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
  
    it "should return array of same length as input array" do
      expect(my_transpose(array).length).to eq(3)
    end 
    
    it "correctly transposes the array" do
      expect(my_transpose(array)).to eq(array.transpose)
    end
  end 
  
  describe "#stock_picker" do
    it "should return an array" do 
      array = [0,1]
      expect(stock_picker(array).class).to be(Array)
    end
    
    it "should return a pair of indices" do 
      array = [0,1,2,3]
      expect(stock_picker(array).length).to eq(2)
    end
    
    it "should return the correct pair of indices" do 
      expect(stock_picker([1,9,2,3])).to eq([0,1])
      expect(stock_picker([1,5,2,3,11])).to eq([0,4])
      expect(stock_picker([7,5,2,3,11])).to eq([2,4])
    end
  end

  
end 
