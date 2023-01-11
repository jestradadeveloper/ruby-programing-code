# Given an integer array nums, return true if any value appears
# at least twice in the array, and return false if every element is distinct.

class Duplicate
  require 'set'
  def self.contains_duplicate(nums)
    set = Set[]
    nums.each do |num|
      return true if set.include?(num)

      set.add(num)
    end
    false
  end
end
