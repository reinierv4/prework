cities = ["moscow","madrid","paris","london"]

addition = cities.reduce(0.0) do |sum, city|
  sum + city.length
end
puts addition/cities.length

["a","b","c"].each_with_index {|x,i| puts "[#{i}] #{x}"}
