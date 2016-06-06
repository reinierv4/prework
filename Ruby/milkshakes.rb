# SHAKE SHAKE SHAKE

#require "pry"
class SuperMilkShop 
	
 	milkshakes = [ ]
	def order()
	  	puts "welcome to the super SuperMilkShop whats your name?"
	  	@person = gets.chomp
	  	puts "allright @{person}, what kind of milkshake would you like?, choose an ingredient"
	  	puts "1.banana,2.limed coconut,3.chocolate chips"
	  	costumer_choice = gets.chomp
	  while costumer_choice == "1" or costumer_choice == "2" or costumer_choice ==  "3"
	  	case costumer_choice
	  		when "1"
	  			@ingredients.push(banana) 
	  			puts "you have added banana, great choice"
	  		when "2"
	  			@ingredients.push(limed_coconut)
	  			puts "you have added coconut, great choice"
	  		when "3"
	  			@ingredients.push(chocolate_chips)
	  			puts "you have added chocolate, great choice"
	  		else 
	  			puts "We don't sell that here"

	  			puts "you have ordererd @{ingredients} would you like to add anything else?, yes or no?"
	  			very_important_decision = gets.chomp
=begin 
					if very_important_decision == yes
	  				return
	  			elsif very_important_decision == no
	  				return "tu batido de @{ingredients}, esta listo @{person}"
	  			else 
	  				puts "oye a mi que me cuentas, que yo estoy trabajando"
	  			end
=end
	  		end
	  	end
	  end
	 class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]   
    
  end


  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

	def price_display
		total = @base_price
		@ingredients.each do |item|
		  item.price
		total += item.price
		  #binding.pry
		end 
	end
end


class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
      
  end
end
	end


 # def add_names(person)
 # 	@person = person
 # end

 def intialize (person, milkshakes)
 	@person = person
 	@milkshakes	= milkshakes
end



class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]   
    
  end


  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

	def price_display
		total = @base_price
		@ingredients.each do |item|
		  item.price
		total += item.price
		  #binding.pry
		end 
	end
end


class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
      
  end
end



banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
limed_coconut = Ingredient.new("limed_coconut",2)

SuperMilkShop.new.order
marcos.add_ingredient(banana)
marcos.add_ingredient(chocolate_chips)

