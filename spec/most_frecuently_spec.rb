require 'spec_helper'
require_relative '../most_frecuently'

describe MostFrecuently do
  it 'Should be found 2 like the most frecuent number in the list' do
    list = [1, 2, 19, 5, 3, 5, 2, 10, 2]
    expect(MostFrecuently.most_frecuent(list)).to eq(2)
  end
end
