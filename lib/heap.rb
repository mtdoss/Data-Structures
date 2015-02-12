# Binary Min Heap
class Heap
  def initialize
    self.store = []    
  end

  def count
    store.length
  end

  def self.child_indices(parent_index, len)
    [(parent_index * 2) + 1, (parent_index * 2) + 2].select { |i| i < len } 
  end

  def self.parent_index(child_index, len)
    (child_index - 1) / 2    
  end

  def self.heapify_up(arr, child_idx, len = arr.length)
    
  end
end
