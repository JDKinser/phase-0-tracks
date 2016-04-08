# Make Santa class
class Santa
	#add attr_accessor for attributes
	attr_accessor :gender, :ethnicity, :age, :reindeer_ranking
	
	# add ititialize method that will tell us whenever a new class is initialized.
	def initialize(genders, ethnicities)
		#puts "Initializing Santa instance..."
		puts "Yay I'm registered! Here is my info:"
		@gender = genders	# add gender attribute and set it from argument
		@ethnicity = ethnicities	# add ethnicity attribute and set it from argument
		@age = 0	# add age attribute and default to 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]	# add Reindeer array
	end
	
	# add a method that will take an argument and output in sentence.
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	
	# add "speak" method that will output sentence.
	def speak
		puts "Haaaappy holidays!! Ho, ho, ho!"
	end
	
	# add attribute-changing methed for age
	def celebrate_birthday
		@age = @age + 1
		puts "Im #{@age}"
	end
	
	# add attribute-changing methed for reindeer
	def get_mad_at(name)
		p @reindeer_ranking
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name
		p @reindeer_ranking
	end

	
#	def gender
#		@gender
#	end
	
	
#	def ethnicity
#		@ethnicity
#	end
		

end


# Set genders array
genders = ["agender", "bigender", "male", "female", "gender fluid", "N/A"]

# Set ethnicities array
ethnicities = ["Black", "Latino", "White", "Asian", "Pacific Islander","Prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# Create a new class instance 50 times
# Set new age to a random number between 0 - 140
# print out the gender, ethnicity and age of santa
# print speak method
# add line break for readability 

50.times do
	santas = Santa.new(genders.sample, ethnicities.sample)
	new_age = rand(140)
	santas.age = new_age
	puts "Gender: #{santas.gender}\nEthnicity: #{santas.ethnicity}\nAge: #{santas.age}"
	santas.speak
	puts "\n"
end

