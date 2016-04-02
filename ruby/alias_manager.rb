# Name Scrambler 2000

# Define a method to scramble given name.
def scrambler (name)
	swapped = name.split.rotate.join(" ") # Take name and flip it.
	swapped.downcase!  # Make string lowercase.
	name1 = swapped.tr("aeiou", "eioua") # Shift all vowels by 1 place.
	name2 = name1.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb") # Shift all conconants by 1 place.
	name3 = name2.split.map(&:capitalize).join(" ") # Make string into substrings capitalize and join back.
end


puts "Thank you for using Name Scrambler 2000." # Greet User.
puts "After you have input your name type 'quit' to exit Name Scrambler 2000." # Explain exit strategy. 
print "Please enter your First and Last name: " # Ask user for First and last name.


name_file = {} # Make an empty hash.


input = false # Set value to false for until loop

until input == true  
real_name = gets.chomp # Get user input
	if real_name == "quit"  
		puts "Thank you for using Name Scrambler 2000"  # Say goodbye when program is exited.
		input = true  
	else 
		new_name = scrambler(real_name)  # Store scrambled name in a new variable.
    
		name_file[real_name] = new_name  # Add the real name and new name to hash.
    
		print "Please enter another First and Last name: " # Prompt the user to enter another name.
	end
end  


name_file.each {|real_name, new_name| puts "#{real_name} your new name is #{new_name}"} 
