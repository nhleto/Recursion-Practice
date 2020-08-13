# frozen_string_literal: true

rand = Array.new(20) { rand 10000000 }

def merge_sort(array)
  return array if array.length <= 1

  mid = (array.length / 2).floor
  left = merge_sort(array[0..mid - 1])
  right = merge_sort(array[mid..array.length])

  final_arr = []
  until left.empty? || right.empty?
    if left[0] < right[0]
      final_arr << left.shift
    else
      final_arr << right.shift
    end
  end
  final_arr.concat(left, right)
end
p merge_sort(rand)
