
class Array
  def my_uniq
    new_array = []
    self.each { |el| new_array << el unless new_array.include?(el)}
    new_array
  end
  
  def two_sum
    
  end
end