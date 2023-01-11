class MaxProfit
  def self.get_max_profit_brute_force(prices)
    max_profits = [0]
    (0..prices.length - 1).each do |i|
      (i + 1..prices.length - 1).each do |j|
        profit = prices[j] - prices[i]
        max_profits << profit
      end
    end
    max_profits.max
  end

  def self.get_max_profit(prices)
    buyed = 0
    max = 0
    selled = 1
    while r < prices.length - 1
      if prices[buyed] < prices[selled]
        profit = prices[buyed] - prices[selled]
        max = [max, profit].max
      else
        buyed = selled
      end
      selled += 1
    end
    max
  end

  def self.get_max_profit_2(_prices)
    min
  end
end

prices = [10, 7, 5, 8, 11, 9]
puts MaxProfit.get_max_profit(prices)
