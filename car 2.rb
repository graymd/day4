class Car
	# Middle difficult
	# Setters
	# attr_writer :make
	# Getters
	# attr_reader :make

	# High difficulty
	# @color
	# def color= value
	# 	@color = value
	# 	@color
	# end

	# def color
	# 	@color
	# end

	# Just do it difficulty
	attr_accessor :make
	attr_accessor :color
	attr_accessor :model
	attr_accessor :back_seats
	attr_accessor :max_speed
	attr_accessor :vin_number
	@@list_of_cars = []

	# Object/Instance method
	# Encapsulation
	# Constructor
	def initialize
		# p "Hello world"
		self.make = "Ford"
		self.model = "Focus"
		self.color = "White"
		self.back_seats = 3
		self.max_speed = 140
		Car.list_of_cars.push(self)
	end

	def display_information
		"#{self.make} #{self.model} #{self.color}"
	end

	# Class Method
	def self.display_all_cars
	end

	def self.list_of_cars
		# p self
		@@list_of_cars
	end

end

# nicks_car = Car.new
# nicks_car.make = "Lotus"
# nicks_car.model = "Elise"
# nicks_car.color = "Lazer Blue"
# nicks_car.back_seats = 0
# nicks_car.max_speed = 160

# jackies_car = Car.new
# jackies_car.make = "Nissan"
# jackies_car.color = "Baige"
# jackies_car.model = "Versa"
# jackies_car.back_seats = 3
# jackies_car.max_speed = 105

# adams_car = Car.new

# p adams_car
# p nicks_car
# p jackies_car
# p adams_car

# class Float
# end
# a = "Some random string"
# a = String.new("Some random string")
# a = Float.new(10.0)
# a = 10

# a = "Hey Ryan!"
# a.methodname

# puts nicks_car.display_information
# puts jackies_car.display_information
# puts adams_car.display_information

# p Car.list_of_cars
