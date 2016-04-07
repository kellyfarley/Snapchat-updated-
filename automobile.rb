class Automobile
	attr_accessor :price, :brand, :seats, :color, :size, :gas
	
	def initialize
		@price = 100000
		@gas = 0
	end

	def argue_over_price(dollars)
		@price += dollars
	end

	def fill_up_tank(gallons)
		@gas += gallons
	end
end

class SUV < Automobile
	attr_accessor :ride_height, :off_road_mobility, :towing, :tire
	def initialize(@towing="false")
		@towing = towing
	end
	def change_to_snow_tire(@snowtire)
		@tire = @snowtire
	end
	def fold_down_seats(seat)
		@seats =+ seat
	end
end

class CarBasedSUV <SUV
	attr_accessor :passengers, :entertainment
	def add_passengers(people)
		@passengers += people
	end

	def play_movie(*entertainment)
		@entertainment = entertainment
	end
end

class TruckBasedSUV <SUV
	attr_accessor :weight, :height
	def initialize(@towing="true")
	end
	def add_cargo(pounds)
		@weight += pounds
	end
end

class Truck <Automobile
	attr_accessor :wheels, :horn, :turnsignal
	def initialize(@wheels=12)
	end
	def honk_horn
		puts "hooonnkkkk"
	end
	def turn_on_turnsignal
		@turnsignal = "true"
	end
end

class 18wheeler <Truck
	attr_accessor :trailer, :length
	def initialize(@wheels=18)
	end
	def add_trailer
		@trailer = "true"
	end
	def detach_trailer
		@trailer = "false"
	end
end

class 8wheeler <Truck
	attr_accessor :weight, :tiresize
	def initialize(@wheels=8)
	end
	def add_cargo(pounds)
		@weight += pounds
	end
	def change_tire(@newtire)
		@tire = @newtire
	end
end

class Van <Automobile
	attr_accessor :trunkspace, :openreardoor
	def initialize(@size="large", @color="white")
		@size = size
	end
	def open_rear_door
		@openreardoor = "true"
	end
	def change_color(@newcolor)
		@color = @newcolor
	end
end

class MiniVan <Van
	attr_accessor :passengers, :slidingdoor
	def initialize(@seats=6)
		@trunkspace = 16
	end
	def add_passengers(people)
		@passengers += people
	end
	def lower_seats_to_increase_trunk_space(feet)
		@trunkspace += feet
	end
end

class CargoVan <Van
	attr_accessor :cargo, :trailer
	def add_cargo(pounds)
		@cargo += pounds
	end
	def add_trailer
		@trailer = "true"
	end
end