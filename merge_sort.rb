def merge_sort(arr)
  return arr if arr.length <= 1

  middle = arr.length / 2
  left_half = merge_sort(arr[0...middle])
  right_half = merge_sort(arr[middle..-1])

  merge(left_half, right_half)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result << (left[0] < right[0] ? left.shift : right.shift)
  end
  result.concat(left).concat(right)
end

# Example usage:
arr = [38, 27, 43, 3, 9, 82, 10]
sorted_arr = merge_sort(arr)
p sorted_arr
