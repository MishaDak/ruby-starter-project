require_relative 'temperature_converter'

loop do
  @builder = TemperatureConverter.new
  puts 'Enter the units you want to convert from (C, K, F): '
  @from = $stdin.gets.chomp

  puts 'Enter the value: '
  @value = $stdin.gets.chomp

  puts 'Enter the units you want to convert to (C, K, F): '
  @to = $stdin.gets.chomp

  @result = @builder.type_set(@from)
                    .value_set(@value)
                    .convert_to(@to)

  puts "Convert from #{@from} to #{@to} result: #{@result}"
  puts 'enter yes if want quit'
  @quit = $stdin.gets.chomp
  if @quit == 'yes' then
    break
  end


end
