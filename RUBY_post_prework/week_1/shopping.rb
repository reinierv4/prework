require 'Date'

class Date

  def season
    # Not sure if there's a neater expression. yday is out due to leap years
    day_hash = month * 100 + mday
    case day_hash
      when 101..401 then :winter
      when 402..630 then :spring
      when 701..930 then :summer
      when 1001..1231 then :fall
    end
  end
end

class ShoppingCart

  def initialize(season)
    @items = season
    @cost_total = 0
    @cart = []
  end

  def add_item_to_cart(item)
      @cost_total += @items[item]
      @cart << item
  end


  def discount_calculator
    counts = Hash.new(0)
    @cart.each { |name| counts[name] += 1 }
    counts.each { |product, items|
      if product == :apple
      @cost_total = @cost_total -@items[:apple] * ( (items/2).round )
    end
      if product == :orange
      @cost_total = @cost_total -@items[:orange] * ( (items/3).round )
    end
      if product == :grapes
      @cost_total = @cost_total - @items[:grapes] * ( (items/4).round
      var = ((items/4).round)-1)
      for i in 0..var
      @cart << :banana
    end
  end
  }
end
  def show
    counts = Hash.new(0)
    @cart.each { |name| counts[name] += 1 }
       counts.each { |product, items|
            p product
            p items
       }
  	end

  	def cost
    	  puts "#{@cost_total}"
  	end

  end

=begin
class Discounts
  def discounts_apple(item)
    if item(:apple) == 2
  end

end
{ :nested_hash => { :first_key => 'Hello' } }
=end
seasons = {
:spring => {:apple => 10, :oranges => 5 , :grapes => 15, :banana => 20, :watermelon => 50},
:summer => {:apple => 10, :oranges => 2 , :grapes => 15, :banana => 20, :watermelon => 50},
:autumn => {:apple => 15, :oranges => 5 , :grapes => 15, :banana => 20, :watermelon => 50},
:winter => {:apple => 12, :oranges => 5 , :grapes => 15, :banana => 21, :watermelon => 50}
}
today = Date.today.season

cart = ShoppingCart.new(seasons[today])

cart.add_item_to_cart(:apple)
cart.add_item_to_cart(:apple)

cart.add_item_to_cart(:grapes)
cart.add_item_to_cart(:grapes)
cart.add_item_to_cart(:grapes)
cart.add_item_to_cart(:grapes)

cart.add_item_to_cart(:banana)
cart.add_item_to_cart(:banana)

cart.discount_calculator

cart.show

cart.cost
puts "you can go home now with your shopping stuff C:"
puts today
