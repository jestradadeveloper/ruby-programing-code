class Array
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))
    [left.quicksort, pivot, *right.quicksort]
  end
end

class OrderingAlgorythm
  def quicksort(arr)
    return [] if arr.empty?

    temp_arr = arr.dup
    pivot = temp_arr.delete_at(rand(temp_arr.length))
    left, right = temp_arr.partition { |o| o < pivot }

    [quicksort(left), pivot, quicksort(right)].flatten
  end
end
