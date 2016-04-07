#class Puppy
# 
# def initialize
# 	puts "Initializing new puppy instance ..."
# end	

# def fetch(toy)
#   puts "I brought back the #{toy}!"
#   toy
# end

# def speak(num)
# 	puts "Woof! " * num.to_i
# end

# def roll_over
# 	puts "*rolls over*"
# end

# def drives_car(car_type)
# 	puts "Man, Spot sure knows how to drive a #{car_type}!"
# end 

# def dog_years(human_yrs)
# 	dog_yrs = human_yrs.to_i * 7
#  	puts dog_yrs
#  	return dog_yrs
#  end	

#end

#puppy = Puppy.new

#puppy.fetch("ball")
#puppy.speak(4)
#puppy.roll_over
#puppy.dog_years(3)
#puppy.drives_car("Jaguar")

class Book

	def initialize
		@page = 1
		#@name = title
		puts "Creating new book..."
	end	

	def add_chapter(chapter_name)
		puts "Nice chapter name. #{chapter_name} has been added to the end"
	end	

	def turn_page
		@page = (@page + 1)
		puts "You're now on page: #{@page}"
	end	
end	

# book = Book.new("Thus Spoke Zarathustra")
# book.turn_page
# book.add_chapter("Awesomesauce")


puts "Hey there and welcome to Literature Maker 3000"

library = []

50.times do |i|
  library << Book.new
end

p library.each

50.times do |i|
  library[i] = library[i].turn_page,
  library[i] = library[i].add_chapter("Part 3")
end
