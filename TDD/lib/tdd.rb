
class Array
  def my_uniq
    new_array = []
    self.each { |el| new_array << el unless new_array.include?(el)}
    new_array
  end
  
  def two_sum
    array = []
    (0...self.length).each do |i|
      (i+1...self.length).each do |j|
        array << [i,j] if self[i] + self[j] == 0
      end 
    end 
    array
  
  end
end

def my_transpose(array)
  len = array.length
  result = Array.new(len) { Array.new(len) }
  (0...len).each do |i|
    (0...len).each do |j|
      result[i][j] = array[j][i]
    end 
  end 
  result
end


def stock_picker(array)
  result = []
  current_profit = 0
  len = array.length
  
  (0...len).each do |i|
    (0...len).each do |j|
      potential = array[j] - array[i]
      if potential > current_profit
        current_profit = potential 
        result = [i, j]
      end
    end 
  end 
  result
end