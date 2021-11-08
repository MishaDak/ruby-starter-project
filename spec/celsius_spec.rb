require '../lib/temperature'
require '../lib/celsius'

RSpec.describe Celsius do
  describe '#convert_to_kelvin' do
    subject { Celsius.new.convert_to_kelvin }

    it { is_expected.to eq 273.15 }
  end

  describe '#convert_to_fahrenheit' do
    subject { Celsius.new.convert_to_fahrenheit }

    it { is_expected.to eq 32.0 }
  end
end
