require 'heap'

describe Heap do
  it 'calculates child indices correctly' do
    expect(Heap.child_indices(0, 7)).to eq([1, 2])
    expect(Heap.child_indices(2, 7)).to eq([5, 6])
    expect(Heap.child_indices(6, 7)).to eq([])
  end

  it 'calculates parent indices correctly' do
    expect(Heap.parent_index(1, 7)).to eq(0)
    expect(Heap.parent_index(5, 7)).to eq(2)
    expect(Heap.parent_index(6, 7)).to eq(2)
  end

  it 'heapifies down correctly' do
    expect(Heap.heapify_down([1, 2, 3, 17, 19], 0)).to eq([1, 2, 3, 17, 19])
    expect(Heap.heapify_down([18, 2, 3, 17, 19, 36, 7], 0))
      .to eq([2, 17, 3, 18, 19, 36, 7])
  end

  it 'heapifies up correctly' do
    expect(Heap.heapify_up([4, 6, 5, 7, 8, 1], 5))
    .to eq([1, 6, 4, 7, 8, 5])
  end
  
end
