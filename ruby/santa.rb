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

gender = ["agender", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["Black", "Latino", "White", "Asian", "Pacific Islander","Prefer not to say", "Mystical Creature (unicorn)", "N/A"]





=begin
santa = Santa.new("male","white") # Store and initialize Santa class in variable "santa"
santa.speak  #run speak method.
santa.eat_milk_and_cookies("oreo")  #run EMC method.
santa.about #driver call to check attributes
=end



#class Puppy
#  def initialize(name)
#  	@name = name
#  end
	
#  def bark
#  	puts "#{@name} says: Woof!"
#  end
#end

# we make an array of names to build puppies with
#names = ["Fido", "Spot", "Duchess", "Ginger"]

# we make an empty container for our puppy collection
#puppies = []

#puts "Iterating through names list to create puppies ..."
#names.each do |name|
#  puts "Creating a puppy named #{name} ..."
#  puppies << Puppy.new(name)
#  puts "There are now #{puppies.length} Puppy instances in the array"
#  puts "----"
#end

#puts "Testing each Puppy instance in the array to make sure it can bark ..."
#puppies.each do |puppy|
#  puppy.bark
#end