class QuickSort

  def self.partition(arr, start, len)
    pivot_idx = start
    pivot_val = arr[pivot_idx] 

    ((start+1)...(start + len)).each do |idx|
      val = arr[idx]
      if pivot_val > val
        arr[idx] = arr[pivot_idx + 1]
        arr[pivot_idx + 1] = arr[pivot_idx]
        arr[pivot_idx] = val
      end

    end
    pivot_idx
  end

  def self.my_qs!(arr, start = 0, len = arr.length)
    return arr if len < 2
    pivot_idx = partition(arr, start, len)
    left_length = pivot_idx - start
    right_length = len - left_length - 1
    my_qs!(arr, start, left_length)
    my_qs!(arr, pivot_idx + 1, right_length)
  end
end

p QuickSort.my_qs!([3, 4, 1, 2, 3, 6, 7, 2, 1])
