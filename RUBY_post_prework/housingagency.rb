# Ruby exercise 1 Easier than it seems , still harder than Life


class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

houses = [

  Home.new("Renier","No Existe",6,0),
  Home.new("Nacho","Nebraska",43,4),
  Home.new("Ignacio","Lenovo",20,2),
  Home.new("Serpieri","Romero",43,5),
  Home.new("Mijhail","San Francisco",43,5),
  Home.new("Satwat","Tomelloso",20,20),
  Home.new("Michael Angelo","alcantarilla",2,24),
  Home.new("Donatello","alcantarilla",2,24),
  Home.new("Rafael","alcantarilla",2,24),
  Home.new("Leonardo","alcantarilla",2,24)
]
=begin
houses.each do |residences|
  puts residences.name
end
=end

houses.each do |residences|
puts "hello #{residences.name} you owe me #{residences.price} so I hope you are paying me soon"
end

precios = houses.map do |prices|
  prices.price
end


sumes = precios.reduce do |sum, x|
   sum + x
 end

average = sumes/precios.length

#puts average

sorted = houses.sort_by {|price| price.price}
sorted.each do |home|
  puts home.name
end

puts "tell me wich range price you want me to show you"
range = gets.chomp
ranger = houses.each do |prices|
  prices.price <= range.to_i
  puts "this are the houses you can afford #{prices.name},#{prices.price}"
end
