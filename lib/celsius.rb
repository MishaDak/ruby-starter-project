class Celsius < Temperature
  def convert_to_kelvin
    (@value + 273.15).round(2)
  end

  def convert_to_fahrenheit
    ((@value * 1.8) + 32).round(2)
  end
end
