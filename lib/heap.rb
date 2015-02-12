# Binary Min Heap
class Heap
  attr_accessor :store
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
    heapify_up(arr, parent_idx)
  end

  def self.heapify_down(arr, parent_idx, len = arr.length)
    return arr if parent_idx == len - 1
    left_child_index, right_child_index = child_indices(parent_idx, len)

    parent_val = arr[parent_idx]

    children = []
    children << arr[left_child_index] if left_child_index
    children << arr[right_child_index] if right_child_index
    return arr if children.empty?

    if children.all? { |el| parent_val < el }
      return arr
    end
    swap_idx = nil
    if children.length == 1
      swap_idx = left_child_index
    else
      swap_idx = children[0] < children[1] ? left_child_index : right_child_index
    end

    arr[parent_idx], arr[swap_idx] = arr[swap_idx], arr[parent_idx]
    heapify_down(arr, swap_idx)
  end

  def push(val)
    store << val
    self.class.heapify_up(store, store.length-1)
  end

  def extract
    val = store[0]
    if count == 0
      store.pop
    else
      store[0] = store.pop
      self.class.heapify_down(store, 0)
    end

    val
  end
end
