# Practice
# write a method that takes three parameters:
# an integer, an operator string (example: "+"), and another integer

# I cant figure out how to add the operator string in the time alloted so I am going to go for a longer route.

# define method that takes two integers and makes array.

def calculate
	[gets, gets].map{ |x| x.chomp.to_i }  # Thought i might be able to get to integers into an array here
end

# ask for user input
puts "Thank you for using our calculator."
puts "Type 'done' when you are through with the calculator."
print "Are you going to be 'adding', 'subtreacting', 'multiplying' or 'dividing': "

#make until loop so it can be repeated

if answer == 'done'		
	puts "Thank you for using the calculator we hope to see you again soon."
elsif answer == 'adding'
	puts "What numbers would you like added?"
	operator = :+
elsif answer == 'subtreacting'
	puts "What two numbers would you like subtreacted?"
	operator = :-
elsif answer == 'multiplying'
	puts "What two numbers would you like multiplied?"
	operator = :*
else
	puts "What two numbers would you like divided?"
	operator = :/
end


math = calculate.inject(operator) # .inject to apply the operator
puts "#{math}"

# I had a hard time wrapping my brain on how to get the string opperator into the method
# Sadly spent most of my time on that. 
# I thought this may have worked but my method isnt working how i thought it would
# I looked up a lot on string operators and most things pointed to using .map
# would love feedback on this not enjoying the whole not getting my practice finished :P