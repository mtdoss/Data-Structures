require 'quick_sort'

describe QuickSort do
 describe "partition" do
  it 'partitions the whole array properly' do
    arr = [3, 5, 6, 1, 9]
    pivot_idx = Quicksort.partition(arr, 0, 5) 
    expect(arr).to eq([1, 3, 6, 5, 9])
    expect(pivot_idx).to eq(1)
  end 
 end 
 
 describe "my_qs!" do
   it 'sorts an array with no duplicates' do
     arr = [3, 5, 6, 1, 2]
     Quicksort.my_qs!(arr)
     expect(arr).to eq([1, 2, 3, 5, 6])
   end

   it 'makes the right number of comparisons'

 end
end
