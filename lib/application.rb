require_relative 'temperature_converter'

@types = %w[C c K k F f]
loop do
  builder = TemperatureConverter.new
  puts 'Enter the units you want to convert from (C, K, F): '
  from = $stdin.gets.chomp until @types.include?(from)

  puts 'Enter the value: '
  value = $stdin.gets.to_f

  puts 'Enter the units you want to convert to (C, K, F): '
  to = $stdin.gets.chomp until @types.include?(to) && (to != from)

  result = builder.type_set(from)
                  .value_set(value)
                  .convert_to(to)

  puts "Convert from #{from} to #{to} result: #{result}"
  puts 'enter yes if want quit'
  quit = $stdin.gets.chomp
  break if quit == 'yes'
end
