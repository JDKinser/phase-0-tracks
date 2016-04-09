#Class Solo Challenge

# Make Airplane class
# add attr_reader and attr_accessor
# add initialization
# add 3 attributes to initialization 1 with argument
# build three methods

# ask user how many planes they would like to rent
# add each instance to an array
# loop through the array and output info


class Airplane
	attr_reader :passengers
	attr_accessor :name, :destination
	
	def initialize(name, destination)
		puts "Testing initialize..."
		@name = name
		@passengers = 0
		@destination = destination
	end
	
	def current_location(location)
		puts "We will be taking off from #{location}"
	end
	
	def guests
		@passengers = rand(180)
	end
	
	def turbulence(weather)
		if weather == "overcast"
			puts "Folks we are experiencing a bit of turbulence. Please fasten your seatbelts."
		elsif weather == "sunny"
			puts "Weather: Sunny"
			puts "Folks looks like smooth sailing today."
		else
			puts "Sigh... I knew you wouldnt follow directions."
		end
	end
	
end

# Driver Code

airplane = Airplane.new("flock", "Florda")
airplane.current_location("arizona")
puts "The planes name is: #{airplane.name}"
puts "Its destination is: #{airplane.destination}"
puts "there are #{airplane.guests} guests on the plane."
airplane.turbulence("sunny")
