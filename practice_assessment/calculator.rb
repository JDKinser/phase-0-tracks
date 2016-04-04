# Practice
# write a method that takes three parameters:
# an integer, an operator string (example: "+"), and another integer

# I cant figure out how to add the operator string in the time alloted so I am going to go for a longer route.

# define method that takes two integers and makes array.

#def calculate
#  [n1,n2].map{ |x| x.chomp.to_i }
#end

print "Are you going to be 'adding', 'subtreacting', 'multiplying' or 'dividing': "
answer = gets.chomp.downcase

status = false

until status == true
puts "Thank you for using our calculator."
puts "Type 'done' when you are through with the calculator."
print "Are you going to be 'adding', 'subtreacting', 'multiplying' or 'dividing': "
answer = gets.chomp.downcase
	if answer == 'done'
		puts "Thank you for using the calculator we hope to see you again soon."
		status = true
	end
end