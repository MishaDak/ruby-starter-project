require_relative 'temperature'
require_relative 'celsius'
require_relative 'fahrenheit'
require_relative 'kelvin'

class TemperatureConverter
  attr_accessor :temperature

  def initialize
    @temperature = Temperature.new
  end

  def type_set(from)
    case from
    when 'C', 'c'
      @temperature = Celsius.new
    when 'K', 'k'
      @temperature = Kelvin.new
    when 'F', 'f'
      @temperature = Fahrenheit.new
    end
    self
  end

  def value_set(value)
    @temperature.value = value if value.is_a? Float
    self
  end

  def convert_to(to)
    case to
    when 'C', 'c'
      @temperature.convert_to_celsius
    when 'K', 'k'
      @temperature.convert_to_kelvin
    when 'F', 'f'
      @temperature.convert_to_fahrenheit
    end
  end
end
