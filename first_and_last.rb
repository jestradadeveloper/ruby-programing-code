# Given a sorted array of integers and an integer target , find the index of the
# first and last position of target in the array. If target cant be found in array
# return [-1,-1]

class FirstAndLast
  def self.first_and_last(arr, target)
    (0..arr.length - 1).each do |i|
      next unless arr[i] == target

      start = i
      i += 1 while i + 1 < arr.length - 1 && arr[i + 1] == target
      return [start, i]
    end
    [-1, -1]
  end
end
