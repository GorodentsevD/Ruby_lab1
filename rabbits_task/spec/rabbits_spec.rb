# frozen_string_literal: true

require 'spec_helper'

describe Rabbits, '#get_reproduction' do
  subject do
    Rabbits.new
  end
  context 'returns 1 if input 1 or 2 month(s)' do
    it { expect(subject.get_reproduction(1)).to eq 1 }
    it { expect(subject.get_reproduction(2)).to eq 1 }
  end

  context 'returns 2 if input 3 months' do
    it { expect(subject.get_reproduction(3)).to eq 2 }
  end

  context 'return false if input months <=0' do
    it { expect(subject.get_reproduction(-1)).to be false }
  end
end
