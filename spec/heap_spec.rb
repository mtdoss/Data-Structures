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
  
end
