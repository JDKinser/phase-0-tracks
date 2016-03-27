# Using time class so program doesnt need to be updated every year.
currentYear = Time.new.year

puts "What is your name?"
name = gets.chomp.capitalize

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
dob = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
bread = gets.chomp.downcase

puts "Would you like to enroll in the company's health insurance? (y/n)"
aflac = gets.chomp.downcase


if age == currentYear - dob && (bread == "y" || aflac == "y")
	puts "Probably not a vampire"

elsif age != currentYear - dob && (bread == "n" || aflac == "n")
	puts "Probably a vampire"

elsif age != currentYear - dob && (bread == "n" && aflac == "n")
	puts "Almost certainly a vampire"

elsif name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire"

else 
	puts "Results inconclusive"

end