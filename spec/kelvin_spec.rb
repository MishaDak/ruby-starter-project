require './lib/temperature.rb'
require './lib/kelvin.rb'

RSpec.describe Kelvin do
  describe '#convert_to_celsius' do
    subject { Kelvin.new.convert_to_celsius }

    it { is_expected.to eq(-273.15) }
  end

  describe '#convert_to_fahrenheit' do
    subject { Kelvin.new.convert_to_fahrenheit }

    it { is_expected.to eq(-459.67) }
  end
end
