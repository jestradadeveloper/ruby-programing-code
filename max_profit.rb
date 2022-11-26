class MaxProfit
  def self.get_max_profit_brute_force(prices)
    l = 0
    max = 0
    r = prices.length - 1
    (0..prices.length - 1).each do |l|
      (l + 1..prices.length - 1).each do |r|
        res = prices[r] - prices[l]
        max = [max, res].max
      end
    end
    max
  end

  def self.get_max_profit(prices)
    l = 0
    max = 0
    r = 1
    while r < prices.length - 1
      if prices[l] < prices[r]
        profit = prices[r] - prices[l]
        max = [max, profit].max
      else
        l = r
      end
      r += 1
    end
    max
  end
end

prices = [7, 6, 4, 3, 1]
MaxProfit.get_max_profit(prices)
