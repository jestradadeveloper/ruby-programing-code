require 'rspec'
require_relative '../max_profit'

describe MaxProfit do
  it 'Should return 5 as a max profit' do
    prices = [7, 1, 5, 3, 6, 4]
    expect(MaxProfit.get_max_profit_brute_force(prices)).to eq(5)
  end
  it 'Should return 0 as a max profit' do
    prices = [7, 6, 4, 3, 1]
    expect(MaxProfit.get_max_profit_brute_force(prices)).to eq(0)
  end
  it 'Should return 5 as a max profit with linear big o time complexity' do
    prices = [7, 1, 5, 3, 6, 4]
    expect(MaxProfit.get_max_profit(prices)).to eq(5)
  end
  it 'Should return 0 as a max profit with linear big o time complexity' do
    prices = [7, 6, 4, 3, 1]
    expect(MaxProfit.get_max_profit(prices)).to eq(0)
  end
end
