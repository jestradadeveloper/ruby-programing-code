class Consecutive
  def self.longest_consecutive_functional(nums)
    consecutives = nums.sort.slice_when { |prev, curr| curr != prev.next }.to_a
    consecutives.max_by(&:length).length
  end

  def self.longest_consecutive(nums)
    return nums.length if nums.length < 2

    hash = {}
    nums.each { |n| hash[n] = 1 }
    longest = 0

    nums.each do |n|
      next if hash[n].zero?

      hash[n] = 0
      nxt = n + 1
      prev = n - 1
      length = 1
      while hash.key? nxt
        length += 1
        hash[nxt] = 0
        nxt += 1
      end

      while hash.key? prev
        length += 1
        hash[prev] = 0
        prev -= 1
      end

      longest = [longest, length].max
    end
    longest
  end
end
