# Using time class so program doesnt need to be updated every year.
currentYear = Time.new.year

puts "How many employees will be processed?"
numProcessed = gets.chomp.to_i

processed = 0

until processed >= numProcessed
	processed += 1

	puts "What is your name?"
	name = gets.chomp.split.map(&:capitalize).join(" ")
	
	puts "How old are you?"
	age = gets.chomp.to_i
	
	puts "What year were you born?"
	dob = gets.chomp.to_i
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	bread = gets.chomp.downcase
	
	puts "Would you like to enroll in the company's health insurance? (y/n)"
	aflac = gets.chomp.downcase

	puts "Please list known allergies you have one at a time, type 'done' when complete."
	allergies = ""

	until allergies == "done" || allergies == "sunshine"
	allergies = gets.chomp.downcase
	end

	if allergies == "sunshine"
		puts "Open the blinds probably a vampire"

	elsif age == currentYear - dob && (bread == "y" || aflac == "y")
		puts "Probably not a vampire"
		
	elsif age != currentYear - dob && (bread == "n" && aflac == "n")
		puts "Almost certainly a vampire"
		
	elsif age != currentYear - dob && (bread == "n" || aflac == "n") 
		puts "Probably a vampire"
		
	elsif name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire"
		
	else 
		puts "Results inconclusive"
		
	end
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends!"
end


=begin
For the name to work no matter how the user input name I found this.
puts "What is your name?"
name = gets.chomp.split.map(&:capitalize).join(" ")
Wanted to make sure code worked if user entered names lowercase.
.split to devide the name into substrings
.map to capitalize the first letter of each substring
finally .join to combine the substrings using (" ") to add space
=end