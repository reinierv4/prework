require 'date'

class ShoppingCart
	def initialize
    @items = []
  end
	def show_items
		sumando = 0
		 @items.each{|becario|
		 puts becario.show_name  + " " + becario.show_price.to_s
		 	sumando = becario.show_price + sumando
		 }
		if @items.length > 4

			sumando = sumando * 0.9
		end
		 puts "the final price is #{sumando}"
	end


	def add_item(item)

		@items.push(item)
	end
end

class Item
  def initialize(name, price)
      @name = name
      @price = price
  end

  def show_name
	return @name
  end


  def show_price
      return @price
  end
end

class Houseware < Item
  def show_price
			if @price > 100
				price = @price * 0.95
				return price
			else return @price
			end
  end
end

class Fruit < Item
  def show_price
		today = Date.today
			if today.wday == 0 || today.wday == 7
				  price = @price * 0.9
					return price
				else return @price
		end
  end
end


banana = Fruit.new("Banana", 10)
vacuum_cleaner = Houseware.new("Vacuum cleaner", 150)
rice = Item.new("Rice",1)
orange_juice = Item.new("Orange Juice",10)
anchoives = Item.new("Anchoives",2)

carlos_cart = ShoppingCart.new
carlos_cart.add_item(banana)
carlos_cart.add_item(banana)
carlos_cart.add_item(banana)
carlos_cart.add_item(banana)
carlos_cart.add_item(banana)
carlos_cart.add_item(vacuum_cleaner)
carlos_cart.add_item(rice)
carlos_cart.add_item(rice)
carlos_cart.add_item(orange_juice)
carlos_cart.add_item(orange_juice)

carlos_cart.show_items
today = Date.today
puts today.wday
