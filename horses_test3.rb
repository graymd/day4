horse_counter = 0
horse_1_spot = 0
horse_2_spot = 0
horse_3_spot = 0
horse_4_spot = 0
speed_up = 1 #giddyup
x = 0
@game_on = true


class Horses

	attr_accessor :horse_pic
	attr_accessor :horse_position
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

	# def self.horse_position
	# 	@@horse_position
	# end


	end

end

class Track
	attr_accessor :horse_track
	attr_accessor :horse_position
	@@position_of_horses = []

	def initialize
		self.horse_track = "_" * 100 + "|"
		self.position_of_horses = [0, 0, 0, 0]
	end

	def horse_mover 
		for x 
			self.position_of_horses[x].push(x)
		else
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


# Horses.list_of_horses do |h|
# 	display_horses
# end

# puts Horses.list_of_horses


# if horse_counter < 4 do |horseys|
# # 	horse_display = 
# 	horse_counter +=1
# end

while @game_on = true #&& horse_position < 100
	Horses.list_of_horses.each do |h|
		h.display_horses
		h.horse_mover
		track.display_horse_track
		puts h.horse_position
	end
	puts "keep going!"
	gets
	puts @game_on.inspect
end

puts "horse x won!"

# horse_1_spot * speed_up = rand(1...5) + horse_1_spot
# horse_2_spot = rand(1...5) + horse_2_spot
# horse_3_spot = rand(1...5) + horse_3_spot
# horse_4_spot = rand(1...5) + horse_4_spot

# make_em_move = gets.chomp

# if make_em_move == "giddyup"
# 	speed_up = 3
# else
# end
































# print horse_1.display_horses
# print horse_2.display_horses
# print horse_3.display_horses
# print horse_4.display_horses
# print track.display_horse_track

# puts "Press the enter key to get your horse a moving"
# make_em_move = gets.chomp

# if make_em_move == "giddyup"
# 	puts "move faster"
# else make_em_move
# 	puts "lets go!"
# end




















