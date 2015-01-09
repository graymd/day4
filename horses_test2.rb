horse_counter = 0
horse_1_spot = 0
horse_2_spot = 0
horse_3_spot = 0
horse_4_spot = 0
speed_up = 1 #giddyup
x = 0

class Horses

	attr_accessor :horse_pic
	attr_accessor :horse_position
	@@game_on = true
	@@list_of_horses = []
	#@@horse_position

	def display_horses 	
		puts "," * self.horse_position + "#{self.horse_pic}"
	end
	
	def initialize
		Horses.list_of_horses.push(self)
		self.horse_position = 0	
	end
	
	def self.list_of_horses
		@@list_of_horses
	end

	def self.game_on
		@@game_on
	end

	# def self.horse_position
	# 	@@horse_position
	# end

	def horsey_position #horse_position
		self.horse_position = rand(5...15) + self.horse_position
		if self.horse_position > 117
			self.horse_position = 117
			@@game_on = false
			
			puts "#{self.horse_pic} is the winner!!"
		end
		puts self.horse_position
	end

	def horse_winner

	end

end

class Track
	attr_accessor :horse_track

	def initialize
		self.horse_track = "_" * 113 + "|"
	end


	def display_horse_track
	puts "#{horse_track}"
	end

end

horses = Horses.new
track = Track.new
horse_1 = Horses.new
horse_1.horse_pic = "<-1-p"
horse_2 = Horses.new
horse_2.horse_pic = "<-2-p"
horse_3 = Horses.new
horse_3.horse_pic = "<-3-p"
horse_4 = Horses.new
horse_4.horse_pic = "<-4-p"


while Horses.game_on #&& horse_position < 100
	Horses.list_of_horses.each do |h|
		h.display_horses
		h.horsey_position
		track.display_horse_track
	end
	gets
end


# track.display_horse_track
## horse_1.display_horses
# p Horses.list_of_horses.inspect


