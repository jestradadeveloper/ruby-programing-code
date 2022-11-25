require 'rspec'
require_relative '../two_sum'

describe TwoSum do
  it 'should return [0,1]' do
    array = [2, 7, 11, 15]
    target = 9
    expect(TwoSum.get_two_sum(array, target)).to eq([0, 1])
  end
end
