class Kelvin < Temperature
  def convert_to_celsius
    (@value - 273.15).round(2)
  end

  def convert_to_fahrenheit
    Celsius.new(convert_to_celsius).convert_to_fahrenheit
  end
end
