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
			puts "Weather: Overcast"
			puts "Folks we are experiencing a bit of turbulence. Please fasten your seatbelts."
		elsif weather == "sunny"
			puts "Weather: Sunny"
			puts "Folks looks like smooth sailing today."
		else
			puts "Sigh... I knew you wouldnt follow directions."
		end
	end
	
end


planes = []

puts "Welcome to your very own airport."
puts "Please follow the instructions so we can gets these planes in the air."
puts "When you are done sending your planes all over the world type 'done'\n"

counter = 0

until counter == 1
	print "What is the name of your airplane? "
	name = gets.chomp

	if name.downcase == "done"
		puts "Here is a list of your airplanes and thier info!"
		planes.each do |plane|
			p planes[plane]	
		end
		counter += 1
	else
		print "Where will we be taking off from today? "
		location = gets.chomp
		
		print "Where we be heading today? "
		destination = gets.chomp
		
		puts "Is the weather 'sunny' or 'overcast' today?"
		print "There is not in between done argue! "
		weather = gets.chomp
		
		airplane = Airplane.new(name, destination)
		puts "The planes name is: #{airplane.name}"
		airplane.current_location(location)
		puts "Its destination is: #{airplane.destination}"
		puts "there are #{airplane.guests} guests on the plane."
		airplane.turbulence(weather)
	end
end






# Driver Code

#airplane = Airplane.new("flock", "Florda")
#airplane.current_location("arizona")
#puts "The planes name is: #{airplane.name}"
#puts "Its destination is: #{airplane.destination}"
#puts "there are #{airplane.guests} guests on the plane."
#airplane.turbulence("sunny")
