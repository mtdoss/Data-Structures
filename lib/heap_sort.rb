require_relative 'heap'
class Array

  def heap_sort!
    2.upto(count-1).each do |heap_size|
      Heap.heapify_up(self, heap_size-1, heap_size)
    end

    count.downto(2).each do |heap_size|
      self[heap_size-1], self[0] = self[0], self[heap_size-1]
      Heap.heapify_down(self, 0, heap_size-1)
    end

    self.reverse!
  end
end

p [4, 2, 7, 1, 8, 10, 3].heap_sort!

