#Ruby buying with Marcos - Chapter "THE MILKSHAKES" 


class MilkShake

	@@milkshake_list = {}

	def MilkShake.get_milkshakes
		@@milkshake_list
	end

	def initialize(flavor,price)  #initializer
		@flavor = flavor
		@price = price
		@ingr_array = []   #arrays will go here, I hope
		@@milkshake_list[flavor] = price
	end
	
	def add_ingredients(secretingredient)
		@ingr_array.push(secretingredient)

		#increases price
		@price += secretingredient.p_ingr
		@@milkshake_list[@flavor] = @price
	end
	
	def tell_me_ingredients
		lista = ""
		@ingr_array.each do |name|
			lista = lista + name.n_ingr + " "
		end
		return lista
	end

	def display_milkshake
		puts "This is the milkshake of #{@flavor} with this ingredient #{tell_me_ingredients} it will #{@price} euros,please enjoy!"
	end
end

class Ingredients
	attr_reader :n_ingr, :p_ingr
	def initialize(n_ingr,p_ingr)
		@n_ingr = n_ingr
		@p_ingr = p_ingr
	end
end

nutella = Ingredients.new("nutella",5)
pistachio = Ingredients.new("pistachio",3)
marcos = MilkShake.new("anus",3)
toni = MilkShake.new("eric",4)
toni.add_ingredients(pistachio) 
marcos.add_ingredients(nutella)
marcos.add_ingredients(pistachio)
marcos.display_milkshake
toni.display_milkshake

puts "Milkshakes: #{MilkShake.get_milkshakes}"