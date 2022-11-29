class FindTargetPositions
  def self.find_target(list, target)
    return [-1, -1] unless list.include?(target)

    hash = {}
    pos = []
    cont = 0
    (0..list.length - 1).each do |i|
      if hash[list[i].to_i]
        hash[list[i].to_i] << i
      else
        hash[list[i].to_i] = [i]
      end
    end
    puts hash.inspect
    [hash[target].first, hash[target].last]
  end
end
