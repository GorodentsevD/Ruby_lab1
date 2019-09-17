# frozen_string_literal: true

require 'spec_helper'

describe Celsius, '#convert_to_kelvin' do
  it 'returns 273,15 if init with 0 degrees' do
    object = Celsius.new(0)
    expect(object.convert_to_kelvin).to eq 273.15
  end
end

describe Celsius, '#convert_to_fahrenheit' do
  it 'returns 32 if init with 0 degrees' do
    object = Celsius.new(0)
    expect(object.convert_to_fahrenheit).to eq 32
  end
end

describe Fahrenheit, '#convert_to_kelvin' do
  it 'returns 273,15 if init with 32 degrees' do
    object = Fahrenheit.new(32)
    expect(object.convert_to_kelvin).to eq 273.15
  end
end

describe Fahrenheit, '#convert_to_celsius' do
  it 'returns 0 if init with 32 degrees' do
    object = Fahrenheit.new(32)
    expect(object.convert_to_celsius).to eq 0
  end
end

describe Kelvin, '#convert_to_fahrenheit' do
  it 'returns 32 if init with 273,15 degrees' do
    object = Kelvin.new(273.15)
    expect(object.convert_to_fahrenheit).to eq 32
  end
end

describe Kelvin, 'convert_to_celsius' do
  it 'returns 0 if init with 273,15 degrees' do
    object = Kelvin.new(273.15)
    expect(object.convert_to_celsius).to eq 0
  end
end
