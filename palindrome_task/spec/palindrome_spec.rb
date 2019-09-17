# frozen_string_literal: true

require 'spec_helper'

describe Palindrome, '#palindrome?' do
  it 'returns true when check word "wow"' do
    expect(Palindrome.new.palindrome?('wow')).to eq true
  end

  it 'returns false when check word "wod"' do
    expect(Palindrome.new.palindrome?('wod')).to eq false
  end
end
