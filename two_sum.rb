class TwoSum
  def self.get_two_sum(array, target)
    hash = {}
    return [0, 1] if array.size == 2 && target == array[0].abs + array[1].abs

    (0..array.length - 1).each do |i|
      return [hash[array[i].to_i], i] if hash[array[i].to_i]

      number_to_find = target - array[i]
      hash[number_to_find.to_i] = i
    end
  end
end
