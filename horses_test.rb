horse_counter = 0

class Horses

	attr_accessor :horse_pic
	@@list_of_horses = []

	def display_horses 	
		puts "#{self.horse_pic}"
	end

	def self.list_of_horses
		@@list_of_horses
	end
	
	def initialize
		Horses.list_of_horses.push(self)	
	end

end

class Track
	attr_accessor :horse_track

	def initialize
		self.horse_track = "_" * 100 + "|"
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

puts @@list_of_horses


# print horse_1.display_horses
# print horse_2.display_horses
# print horse_3.display_horses
# print horse_4.display_horses
# print track.display_horse_track

puts "Press the enter key to get your horse a moving"
make_em_move = gets.chomp
if make_em_move == "/n"
	puts "Run horsey!  Run!"
else
	"Hit the enter key next time!"


















