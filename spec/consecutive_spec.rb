require 'rspec'
require_relative '../consecutive'

describe Consecutive do
  it 'It should return length  of 4 for the [100,4,200,1,3,2] array' do
    array = [100, 4, 200, 1, 3, 2]
    expect(Consecutive.longest_consecutive_functional(array)).to eq(4)
  end
  it 'It should return length  of 9 for the [0,3,7,2,5,8,4,6,0,1] array' do
    array = [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]
    expect(Consecutive.longest_consecutive_functional(array)).to eq(9)
  end
  it 'It should return length  of 4 for the [100,4,200,1,3,2] array' do
    array = [100, 4, 200, 1, 3, 2]
    expect(Consecutive.longest_consecutive(array)).to eq(4)
  end
  it 'It should return length  of 9 for the [0,3,7,2,5,8,4,6,0,1] array' do
    array = [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]
    expect(Consecutive.longest_consecutive(array)).to eq(9)
  end
  it 'It should return length  of 2 for the [0,-1] array' do
    array = [0, -1]
    expect(Consecutive.longest_consecutive(array)).to eq(2)
  end
  it '[0,0,-1]' do
    array = [0, 0, -1]
    expect(Consecutive.longest_consecutive(array)).to eq(2)
  end
end
