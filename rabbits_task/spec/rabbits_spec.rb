# frozen_string_literal: true

require 'spec_helper'

describe Rabbits, 'get_reproduction' do
  it 'returns 1 if input 1 or 2 month(s)' do
    rabbits = Rabbits.new
    expect(rabbits.get_reproduction(1)).to eq 1
    expect(rabbits.get_reproduction(2)).to eq 1
  end
  it 'returns 2 if input 3 months' do
    expect(Rabbits.new.get_reproduction(3)).to eq 2
  end
end
