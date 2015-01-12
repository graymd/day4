#Menu of all the foods offered
#
#allow to order food via typing in the name
#
#keep a running count of food ordered as well as the costs associated with each
#keep a total costs
#need to add or remove items

# Menu

# dinner

# steak, chicken, spaghetti
# costs of food


class Meal
	attr_accessor :name
	attr_accessor :price
	@@list_of_meals = [ ]

	def initialize
		Meal.list_of_meals.push(self)
	end

	def display_menu
		puts "#{self.name} for $#{self.price}"
	end

	def self.list_of_meals
		@@list_of_meals
	end
end

class Order
	attr_accessor :order_data
	attr_accessor :user_order

	def initialize
		self.order_data = [ ]
	end

	def populate_order
		puts "What would you like to order (type done when complete with order)?"
		keep_populating = true
		while keep_populating
			user_order = gets.chomp.downcase
			if user_order != "done"
				self.order_data.push(user_order)
			else
				keep_populating = false
			end
		end
		p self.order_data
	end

	def tally_order
		total_price = 0
		
			end
		end
	end

end




meal1 = Meal.new
meal1.name = "Steak"
meal1.price = 12
meal2 = Meal.new
meal2.name = "Chicken"
meal2.price= "8"
meal3 = Meal.new
meal3.name = "Spaghetti"
meal3.price = "10"



puts "We offer the following meals / prices:"
Meal.list_of_meals.each do |show|
	show.display_menu
end

new_order = Order.new
new_order.populate_order
new_order.tally_order




















# puts "What would you like to buy?"

# while order != "done"
# 	p items_ordered
# 	order = gets.chomp.downcase
# 	if order != "done"
# 		items_ordered.push(order)
# 		puts "would you like anything else?"
# 	end
# end

# p items_ordered








