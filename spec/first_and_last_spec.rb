require 'spec_helper'
require_relative '../first_and_last'

describe FirstAndLast do
  it 'Should return [2,6]' do
    array = [2, 4, 5, 5, 5, 5, 5, 7, 9, 9]
    target = 5
    fal = FirstAndLast.first_and_last(array, target)
    expect(fal).to eq([2, 6])
  end
  it 'Should return [1,3]' do
    array = [2, 4, 4, 4, 5, 5, 6, 7, 9, 9]
    target = 4
    fal = FirstAndLast.first_and_last(array, target)
    expect(fal).to eq([1, 3])
  end
end
