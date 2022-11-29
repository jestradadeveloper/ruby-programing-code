require 'spec_helper'
require_relative '../find_target'

describe FindTargetPositions do
  it 'Should return [2,6]' do
    list = [2, 4, 5, 5, 5, 5, 5, 7, 9, 9]
    target = 5
    ftp =  FindTargetPositions.find_target(list, target)
    expect(ftp).to eq([2, 6])
  end
  it 'Should return [3,4]' do
    list = [5, 7, 7, 8, 8, 10]
    target = 8
    ftp = FindTargetPositions.find_target(list, target)
    expect(ftp).to eq([3, 4])
  end
end
