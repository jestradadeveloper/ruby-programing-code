require_relative '../duplicate'

describe Duplicate do
  it 'Should return true for [2, 4, 5, 5, 5, 5, 5, 7, 9, 9]' do
    numbers = [2, 4, 5, 5, 5, 5, 5, 7, 9, 9]
    expect(Duplicate.contains_duplicate(numbers)).to eq(true)
  end
  it 'Should return false for [2, 4, 5, 5, 5, 5, 5, 7, 9, 9]' do
    numbers = [2, 4, 1, 5, 10, 15, 25, 7, 29, 9]
    expect(Duplicate.contains_duplicate(numbers)).to eq(false)
  end
end
