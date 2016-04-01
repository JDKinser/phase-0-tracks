#Interior Design Info Form

#Create an empty hash
user_info = {}

#Ask user for name.
#Store input to key :name in hash.
print "Please enter your full name: "
user_info[:name] = gets.chomp


#Ask user for age.
#Store input to key :age in hash.
print "Please enter your age: "
user_info[:age] = gets.chomp.to_i


#Ask user for number of children.
#Store input to key :kids in hash.
print "How many children do you have? (You may include your husband): "
user_info[:kids] = gets.chomp.to_i


#Ask user what their dream decor theme.
#Store input to key :dream_decor in hash.
print "What is your dream decors theme?: "
user_info[:dream_decor] = gets.chomp


#Ask user if they own their home.
#Store input to home_owner variable as a boolean.
print "Do you own your home? (y/n): "
home_owner1 = gets.chomp


#Convert string to boolean and make new variable 
if home_owner1 == "y"
	home_owner = true
else
	home_owner = false
end


#Add variable as a value to the "home_owner" key.		
user_info[:home_owner] = home_owner


#Print hash to screen.
p user_info


#Ask user if they would like to update form.
#Add input to the variable "changes" and downcase if needed.
print "Are there any changes that need to be made to the information above: (y/n)"
changes = gets.chomp.downcase

#When the input is "y"
#Tell users which keys they have the ability to update.
#Ask which key value they would like to change.
if changes == "y"
	puts "Your keys are 'name', 'age', 'kids', 'dream_decor' and 'home_owner'"
	print "Which key value would you like to update?: "
	key = gets.chomp

#Update value of chosen key. 	
	if key == "name"
		print "Please input new name: "
		user_info[:name] = gets.chomp
	elsif key == "age"
		print "Please input new age: "
		user_info[:age] = gets.chomp
	elsif key == "kids"
		print "Please input number of children: "
		user_info[:kids] = gets.chomp
	elsif key == "dream_decor"
		print "Please input dream decor: "
		user_info[:dream_decor] = gets.chomp
	else key == "home_owner"
		print "Please input new answer: "
		user_info[:home_owner] = gets.chomp
	end
	
#If they answer "n" print messege.	
else
	puts "We thank you for your input."
end












