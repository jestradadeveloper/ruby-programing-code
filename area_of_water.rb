# Class to get the maximum area of heights
class AreaOfWater
  def self.get_max_area(array)
    res = 0
    (0..array.length - 1).each do |l|
      ((l + 1)..array.length - 1).each do |r|
        area = (r - l) * [array[r], array[l]].min
        res = [res, area].max
      end
    end
    res
  end

  def self.get_max_area_optimal(array)
    l = 0
    res = 0
    r = (array.length - 1)
    while l < r
      area = (r - l) * [array[l], array[r]].min
      res = [res, area].max
      array[l] < array[r] ? l += 1 : r -= 1
    end
    res
  end
end
