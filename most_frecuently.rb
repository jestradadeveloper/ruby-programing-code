# Find the most frequently occurring item in an array.
# Example: The most frequently occurring item in [1, 3, 1, 3, 2, 1] is 1.
# If you're given an empty array, you should return nil
# You can assume that there is always a single, unique value
# that appears most frequently unless the array is empty.
# For instance, you won't be given an array such as [1, 1, 2, 2].
class MostFrecuently
  def self.most_frecuent(list)
    hash = {}
    cont = 0
    (0..list.length - 1).each do |i|
      hash[list[i].to_i] = hash[list[i].to_i] ? cont += 1 : 1
    end
    hash.key hash.values.max
  end
end
