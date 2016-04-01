#Interior Design Info Form
#Create an empty hash
user_info = {}

#Ask user for name.
#Store input to name variable.
#Add variable as value to the "name" key.
print "Please enter your full name: "
name = gets.chomp
user_info[:name] = name


#Ask user for age.
#Store input to age variable as an integer.
#Add variable a value to the "age" key.
print "Please enter your age: "
age = gets.chomp.to_i
user_info[:age] = age



#Ask user for number of children.
#Ask user what their dream decor theme.
#Ask user if they own their home.