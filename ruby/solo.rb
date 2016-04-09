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
		print "------------"
		puts "\nNew Plane:"
		print "------------"
		@name = name
		@passengers = 0
		@destination = destination
	end
	
	def current_location(location)
		puts "\nWe will be taking off from: #{location}"
	end
	
	
	def guests
		@passengers = rand(180)
	end
	
	def turbulence(weather)
		if weather == "overcast"
			puts "\nWeather: Overcast"
			puts "Due to the weather we may experience a bit of turbulence."
		elsif weather == "sunny"
			puts "\nWeather: Sunny"
			puts "Due to the sunny weather looks like smooth sailing today."
		else
			puts "\nWeather unknow... User cant type."
		end
	end
	
	def info
		puts "\nThe planes name is: #{@name}"
		puts "\nIts destination is: #{@destination}"
		puts "\nThere are #{guests} guests on the plane."
	end
	
end


planes = []

puts "\nWelcome to your very own airport." 
puts "\nPlease follow the instructions so we can gets these planes in the air." 
puts "When you are done sending your planes all over the world type 'done'" 

counter = 0

dashes = "-" * 50

until counter == 1
	print "\nWhat is the name of your airplane? "
	name = gets.chomp

	if name.downcase == "done"
		print dashes
		puts "\nHere is a list of your airplanes and thier info!\n"
		print dashes
		planes.count.times do |i|
			planes[i].info		
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
		airplane.current_location(location)
		airplane.info
		airplane.turbulence(weather)
		
		planes << airplane
	end
end




# Driver Code

#airplane = Airplane.new("flock", "Florda")
#airplane.current_location("arizona")
#puts "The planes name is: #{airplane.name}"
#puts "Its destination is: #{airplane.destination}"
#puts "there are #{airplane.guests} guests on the plane."
#airplane.turbulence("sunny")
