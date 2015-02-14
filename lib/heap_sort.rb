require_relative 'heap'
# class Array
#
#   def heap_sort!
#     2.upto(count-1).each do |heap_size|
#       Heap.heapify_up(self, heap_size-1, heap_size)
#     end
#
#     count.downto(2).each do |heap_size|
#       self[heap_size-1], self[0] = self[0], self[heap_size-1]
#       Heap.heapify_down(self, 0, heap_size-1)
#     end
#
#     self.reverse!
#   end
# end
#

# class Array
#   def heap_sort!
#     2.upto(count - 1).each do |heap_sz|
#      Heap.heapify_up(self, heap_sz - 1, heap_sz)
#     end
#
#     count.downto(2).each do |heap_sz|
#       self[heap_sz - 1], self[0] = self[0], self[heap_sz - 1]
#      Heap.heapify_down(self, 0, heap_sz - 1)
#     end
#
#     self.reverse!
#   end
# end

def heap_sort(arr)
  heap = Heap.new
  result = []
  arr.each do |el|
    heap.push(el)
  end
  arr.length.times do |el|
    result << heap.extract
  end
  result
end

p heap_sort([6, 4, 2, 1, 19, 10, 5, 20, 3])
