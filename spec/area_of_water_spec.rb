require 'spec_helper'
require_relative '../area_of_water'

describe AreaOfWater do
  it 'Should return 49 with brute force function' do
    heights = [1, 8, 6, 2, 5, 4, 8, 3, 7]
    expect(AreaOfWater.get_max_area(heights)).to eq(49)
  end
  it 'Should return 49 with linear time function' do
    heights = [1, 8, 6, 2, 5, 4, 8, 3, 7]
    expect(AreaOfWater.get_max_area_optimal(heights)).to eq(49)
  end
  it 'Should return 9 with linear time function' do
    heights = [2, 3, 3, 2, 3]
    expect(AreaOfWater.get_max_area_optimal(heights)).to eq(9)
  end
  it 'Should return 1 with linear time function' do
    heights = [1,1]
    expect(AreaOfWater.get_max_area_optimal(heights)).to eq(1)
  end
end
