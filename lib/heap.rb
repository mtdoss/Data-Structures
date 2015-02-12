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
    return arr if child_idx == 0
    child_val = arr[child_idx]
    parent_idx = parent_index(child_idx, len)
    parent_val = arr[parent_idx]

    if child_val >= parent_val
      return arr
    end

    arr[child_idx], arr[parent_idx] = parent_val, child_val
    heapify_up(arr, parent_idx, len)
  end
end
