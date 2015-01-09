require './car.rb'
# require './Test/test.rb'

class Inventory
	attr_accessor :car_data

	def initialize
		self.car_data = [ ]
	end

	def add_car *car_list
		car_list.each do |car|
			new_car = Car.new
			new_car.make = car[:make]
			new_car.color = car[:color]
			new_car.model = car[:model]
			new_car.back_seats = car[:back_seats]
			new_car.max_speed = car[:max_speed]
			new_car.vin_number = car[:vin_number]
			self.car_data.push(new_car)
		end
	end

	def remove_car vin_number
		self.car_data.delete_if do |car|
			car.vin_number == vin_number
		end
	end

	def populate_cars
		puts "Populate your car data"
		hash = {}
		keep_populating = true
		while keep_populating
			puts "Current Invetory:"
			puts self.car_data
			puts "Make:"
			hash[:make] = gets.chomp
			puts "Model:"
			hash[:model] = gets.chomp
			puts "Color:"
			hash[:color] = gets.chomp
			puts "Back Seats:"
			hash[:back_seats] = gets.chomp
			puts "Max Speed:"
			hash[:max_speed] = gets.chomp
			puts "Vin Number:"
			hash[:vin_number] = gets.chomp 
			self.add_car(hash)
			puts "Add another? y/n"
			answer = gets.chomp
			if answer == 'n'
				keep_populating = false
			end
		end
	end
end

zach_inventory = Inventory.new

car1 = {
	make: "Porsche",
	color: "Midnight Blue",
	model: "911 Turbo",
	back_seats: 0,
	max_speed: 200,
	vin_number: "123"
}

car2 = {
	make: "Daewoo",
	color: "Brown",
	model: "Nubira",
	back_seats: 4,
	max_speed: 95,
	vin_number: "456"
}

car3 = {
	make: "Ford",
	color: "Ruby Red",
	model: "Fiesta",
	back_seats: 3,
	max_speed: 90,
	vin_number: "789"
}
# zach_inventory.add_car(car1)
# zach_inventory.add_car(car2, car3)

# p zach_inventory.car_data

# zach_inventory.remove_car("456")

# p zach_inventory.car_data


zach_inventory = Inventory.new
p zach_inventory
# zach_inventory.populate_cars








