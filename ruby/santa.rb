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
	
	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
	end
	
end

# Store and initialize Santa class in variable "santa"
santa = Santa.new("male","white")

#run speak method.
santa.speak

#run EMC method.
santa.eat_milk_and_cookies("oreo")

santa.about