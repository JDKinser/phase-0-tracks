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
	
end

# Driver Code

airplane = Airplane.new("flock", "Florda")
puts "The planes name is: #{airplane.name}"
puts "Its destination is: #{airplane.destination}"