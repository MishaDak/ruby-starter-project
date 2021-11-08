require './lib/temperature_converter'
require './lib/temperature'
require './lib/fahrenheit'
require './lib/kelvin'
require './lib/celsius'

RSpec.describe TemperatureConverter do
  describe '#init' do
    subject { TemperatureConverter.new.temperature.value }

    it { is_expected.to eq 0.0 }
  end

  describe '#type_set_celsus' do
    subject { TemperatureConverter.new.type_set('C').temperature }

    it { is_expected.is_a? Celsius }
  end

  describe '#type_set_kelvin' do
    subject { TemperatureConverter.new.type_set('K').temperature }

    it { is_expected.is_a? Kelvin }
  end

  describe '#type_set_fahrenheit' do
    subject { TemperatureConverter.new.type_set('F').temperature }

    it { is_expected.is_a? Fahrenheit }
  end

  describe '#type_set_celsus' do
    subject { TemperatureConverter.new.type_set('c').temperature }

    it { is_expected.is_a? Celsius }
  end

  describe '#type_set_kelvin' do
    subject { TemperatureConverter.new.type_set('k').temperature }

    it { is_expected.is_a? Kelvin }
  end

  describe '#type_set_fahrenheit' do
    subject { TemperatureConverter.new.type_set('f').temperature }

    it { is_expected.is_a? Fahrenheit }
  end

  describe '#type_set_trash' do
    subject { TemperatureConverter.new.type_set('G').temperature }

    it { is_a? Temperature }
  end

  describe '#value_set' do
    subject { TemperatureConverter.new.value_set(15.2).temperature.value }

    it { is_expected.to eq 15.2 }
  end

  describe '#value_set_trash' do
    subject { TemperatureConverter.new.value_set('G').temperature.value }

    it { is_expected.to eq 0.0 }
  end

  describe '#convert_to' do
    subject { TemperatureConverter.new.type_set('C').convert_to('K') }

    it { is_expected.to eq 273.15 }
  end

  describe '#convert_to' do
    subject { TemperatureConverter.new.type_set('K').convert_to('C') }

    it { is_expected.to eq(-273.15) }
  end

  describe '#convert_to' do
    subject { TemperatureConverter.new.type_set('C').convert_to('F') }

    it { is_expected.to eq 32 }
  end
end
