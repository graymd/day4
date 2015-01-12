
user_input = ""
class Horse

	attr_accessor :horse_pic
	attr_accessor :horse_position
	@@game_on = true
	@@list_of_horses = []
	@@horse_winner = ""
	@@position_array = []

	def display_horses
			print "," * self.horse_position + "#{self.horse_pic}"
	end
	
	def initialize
		Horse.list_of_horses.push(self)
		self.horse_position = 0
	end
	
	def self.list_of_horses
		@@list_of_horses
	end

	def self.position_array
		@@position_array
	end

	def self.game_on
		@@game_on
	end

	def position_of_horse
		self.horse_position = rand(5...10) + self.horse_position	
		if self.horse_position > 120
			@@game_on = false	
			@@horse_winner = self.horse_pic
			Horse.position_array.push(self.horse_position)
		end
		puts self.horse_position

	end

	def self.horse_winner
		print @@horse_winner
	end

end



class Track
	attr_accessor :horse_track

	def initialize
		self.horse_track = "_" * 119 + "|"
	end

	def display_horse_track
		puts "#{horse_track}"
	end
end

track = Track.new
horse_1 = Horse.new
horse_1.horse_pic = "<-1-p"
horse_2 = Horse.new
horse_2.horse_pic = "<-2-p"
horse_3 = Horse.new
horse_3.horse_pic = "<-3-p"
horse_4 = Horse.new
horse_4.horse_pic = "<-4-p"

# print @@list_of_horses[0]

while Horse.game_on
	if user_input == "giddyup"
		horse_1.horse_position = (horse_1.horse_position * 1.5).to_i
	end
		Horse.list_of_horses.each do |h|
			h.display_horses
			h.position_of_horse
			track.display_horse_track
		end

		user_input = gets.chomp
	if Horse.game_on
	system "clear"
	else
	end
	
end
if user_input != "giddyup"
	print "#{Horse.horse_winner} is the winner of this race!"
	puts " "
else
end


