require './lib/temperature.rb'
require './lib/fahrenheit.rb'

RSpec.describe Fahrenheit do
  describe '#convert_to_celsius' do
    subject { Fahrenheit.new.convert_to_celsius }

    it { is_expected.to eq(-17.78) }
  end

  describe '#convert_to_kelvin' do
    subject { Fahrenheit.new.convert_to_kelvin }

    it { is_expected.to eq 255.37 }
  end
end
