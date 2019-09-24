# frozen_string_literal: true

require 'spec_helper'

describe Palindrome do
  subject do
    Palindrome.new
  end

  describe '.palindrome?' do
    context 'returns true when check word "wow"' do
      let(:word) { 'wow' }
      it { expect(subject.palindrome?(word)).to be true }
    end

    context 'returns false when check word "wod"' do
      let(:word) { 'wod' }
      it { expect(subject.palindrome?(word)).to be false }
    end
  end
end
