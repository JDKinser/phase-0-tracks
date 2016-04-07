# Santa class

# Make Santa class
class Santa
	
	# add ititialize method that will tell us whenever a new class is initialized.
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
	end
	
	# add a method that will take an argument and output in sentence.
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	
	# add "speak" method that will output sentence.
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def reindeer
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	
	def age
		@age = 0
	end
	
	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Im #{@age} years old!"
		puts "Here is a list of my reindeer: " 
		puts reindeer
	end
	
end

santa = Santa.new("male","white") # Store and initialize Santa class in variable "santa"
santa.speak  #run speak method.
santa.eat_milk_and_cookies("oreo")  #run EMC method.
santa.about #driver call to check attributes