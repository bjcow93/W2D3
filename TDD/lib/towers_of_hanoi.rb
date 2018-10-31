
class Towers 
  attr_accessor :towers 
  
  def initialize
    @towers = [ [3,2,1], [], [] ]
  end
  
  def won?
    return true if @towers == [[], [3,2,1], []]
    return true if @towers == [[], [], [3,2,1]]
    false
  end
  
  def move(arr)
    disc = @towers[arr[0]].pop
    @towers[arr[1]].push(disc)
  end

end 
