class Fahrenheit < Temperature
  def convert_to_celsius
    ((@value - 32) * 5 / 9).round(2)
  end

  def convert_to_kelvin
    Celsius.new(convert_to_celsius).convert_to_kelvin
  end
end
