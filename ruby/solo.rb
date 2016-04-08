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
	attr_reader :name
	
	def initialize(name)
		puts "Testing initialize..."
		@name = name
	end
	
end

# Driver Code

airplane = Airplane.new("flock")
puts "The planes name is: #{airplane.name}"
