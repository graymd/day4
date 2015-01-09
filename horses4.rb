horse_counter = 0
horse_1_spot = 0
horse_2_spot = 0
horse_3_spot = 0
horse_4_spot = 0
speed_up = 1 #giddyup
x = 0
user_input =""

class Horse

	attr_accessor :horse_pic
	attr_accessor :horse_position
	@@game_on = true
	@@list_of_horses = []
	@@horse_winner = ""

	def display_horses
			print "," * self.horse_position + "#{self.horse_pic}"
	end
	
	def initialize
		Horse.list_of_horses.push(self)
		self.horse_position = 0
		self.horse_pic = "<-1-p"
	end
	
	def self.list_of_horses
		@@list_of_horses
	end

	def self.game_on
		@@game_on
	end

	def position_of_horse
		self.horse_position = rand(5...10) + self.horse_position
		if self.horse_position > 117
			# self.horse_position = 117
			@@game_on = false	
			@@horse_winner = self.horse_pic
		end
		puts self.horse_position
	end

	def farthest_horse
		if self.horse_position
		end
	end

	def self.horse_winner
		print @@horse_winner
	end

	def cheat_for_horse_win
		puts "#{self.horse_pic} is a cheater and has been DQd - run the race again!"
		@@game_on = false	
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

horses = Horse.new
track = Track.new
horse_2 = Horse.new
horse_2.horse_pic = "<-2-p"
horse_2.horse_position = 0
horse_3 = Horse.new
horse_3.horse_pic = "<-3-p"
horse_3.horse_position = 0
horse_4 = Horse.new
horse_4.horse_pic = "<-4-p"
horse_4.horse_position = 0

# print @@list_of_horses[0]

while Horse.game_on
	if user_input == "giddyup"
		horses.cheat_for_horse_win

	else
		Horse.list_of_horses.each do |h|
			h.display_horses
			h.position_of_horse
			track.display_horse_track
		end

		user_input = gets.chomp
	system "clear"
	end
end
if user_input != "giddyup"
	print "#{Horse.horse_winner} is the winner of this race!"
	puts " "
else
end


if horse_1.horse_position > horse_2.horse_position && 
	horse_1.horse_position > horse_2.horse_position &&
	horse_1.horse_position > horse_3.horse_position &&
	horse_1.horse_position > horse_4.horse_position

print "#{horse_1.horse} is the winner!"

end






























