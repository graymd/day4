class Car


	# Just do it difficulty
	attr_accessor :make
	attr_accessor :color
	attr_accessor :model
	attr_accessor :back_seats
	attr_accessor :max_speed
	attr_accessor :vin_number
	@@list_of_cars = []


	def display_information
		"#{self.make} #{self.model} #{self.color}"
	end


	def self.list_of_cars
		# p self
		@@list_of_cars
	end

end

nicks_car = Car.new
nicks_car.make = "Lotus"
nicks_car.model = "Elise"
nicks_car.color = "Lazer Blue"
nicks_car.back_seats = 0
nicks_car.max_speed = 160

jackies_car = Car.new
jackies_car.make = "Nissan"
jackies_car.color = "Baige"
jackies_car.model = "Versa"
jackies_car.back_seats = 3
jackies_car.max_speed = 105



puts nicks_car.display_information
puts jackies_car.display_information
