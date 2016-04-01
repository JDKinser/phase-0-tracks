#Interior Design Info Form
def self.to_b(str)
	case str
	when "y" then true
	when "n" then false
	end
end

#Create an empty hash
user_info = {}

#Ask user for name.
#Store input to name variable.
#Add variable as a value to the "name" key.
print "Please enter your full name: "
name = gets.chomp
user_info[:name] = name


#Ask user for age.
#Store input to age variable as an integer.
#Add variable as a value to the "age" key.
print "Please enter your age: "
age = gets.chomp.to_i
user_info[:age] = age


#Ask user for number of children.
#Store input to kids variable as an integer.
#Add variable a value to the "kids" key.
print "How many children do you have? (You may include your husband): "
kids = gets.chomp.to_i
user_info[:kids] = kids


#Ask user what their dream decor theme.
#Store input to dream_decor variable.
#Add variable as a value to the "dream_decor" key.
print "What is your dream decors theme?: "
dream_decor = gets.chomp
user_info[:dream_decor] = dream_decor


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

		

		
		
		
		
		
		
		
		
		
		
		