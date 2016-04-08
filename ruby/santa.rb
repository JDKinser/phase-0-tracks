# Santa class

# Make Santa class
class Santa
	attr_accessor :gender, :ethnicity, :age, :reindeer_ranking
	
	# add ititialize method that will tell us whenever a new class is initialized.
	def initialize(genders, ethnicities)
		#puts "Initializing Santa instance..."
		
		@gender = genders
		@ethnicity = ethnicities
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	
	# add a method that will take an argument and output in sentence.
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	
	# add "speak" method that will output sentence.
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def celebrate_birthday
		@age = @age + 1
		puts "Im #{@age}"
		@age
	end
	
	def get_mad_at(name)
		p @reindeer_ranking
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name
		p @reindeer_ranking
	end

end



genders = ["agender", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["Black", "Latino", "White", "Asian", "Pacific Islander","Prefer not to say", "Mystical Creature (unicorn)", "N/A"]

50.times do |i|
	santas = Santa.new(genders.sample, ethnicities.sample)
	santas.speak
	new_age = rand(140)
	santas.age = new_age
	puts "Gender: #{santas.gender}\nEthnicity: #{santas.ethnicity}\nAge: #{santas.age}"
end







#def about
#	puts "Gender: #{@genders}"
#	puts "Ethnicity: #{@ethnicities}"
#	puts "Im #{@new_age} years old!"
#	puts "Here is a list of my reindeer: #{@reindeer_ranking}" 
#end


#santas = {}
#
#genders.each do |gender, ethnicity|
#	santas << Santa.new(gender, ethnicity)
#	puts "There are now #{santas.length} Santa instances in the Hash"
#  puts "----"
#end



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