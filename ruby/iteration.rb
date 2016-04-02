# Write your own method that takes a block.

# Make a method
def lunch
  puts "Status is hungry"
  yield("fries", "ice cream")
end

# Call that method with a block
lunch { |value1, value2| puts "Here comes the food. It looks like the main course is #{value1} and dessert is #{value2}" }

# Release 1
# Declare an array and a hash, and populate each of them with some data

# Book Array
book = ["Sprints", "How to Win Friends & Influence People", "Ruby For Dummies", "Martian"]


# Genre Hash
genre = {horror: "Ruby For Dummies", design: "Sprints", comedy: "Martian", business: "How To Win Friends and Influence People"}


# Print books before calling method.
puts book


# Make method to call book array.
book.each do |weird|
  puts weird
end 


# Make method to call book array but modify it to capitalize every character.
book_upcase = book.map do |modified|
  modified.upcase
end


# Print books after calling method.
puts book_upcase


# Print out unmodified genre hash.
puts genre


# Print out each key and value in a sentence.
genre.each do |genre, book|
  puts "My favorite #{genre} book is #{book}"
end 


# Release 2
# Assign random array of numbers.
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


# Assign random hash.
states = {ca: "San Fran", az: "Chandler", ny: "Manhattan", mx: "San Diego"}

# Print original array
p numbers


# Delete any numbers that are less the 5
numbers.delete_if {|value| value < 5}


# Print out modified array.
p numbers


# Print out original hash.
p states


# Delete any key and value that is equal to San Fran.
states.delete_if {|state, city| city == "San Fran"}


# Print out modified hash
p states


# Reset Values
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

states = {ca: "San Fran", az: "Chandler", ny: "Manhattan", mx: "San Diego"}


# Print original array
p numbers


# Keep any numbers that are greater then or equals to 3
numbers.keep_if {|value| value >= 3}


# Print out modified array.
p numbers


# Print out original hash.
p states


# Delete any key and value that is equal to San Fran.
states.keep_if {|state, city| state != :az}


# Print out modified hash
p states


# Reset Values
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

states = {ca: "San Fran", az: "Chandler", ny: "Manhattan", mx: "San Diego"}


# Print original array
p numbers


# Filter the number 8 from the array using the select! method
numbers.select! {|value| value == 8}


# Print out modified array.
p numbers


# Print out original hash.
p states


# Filter the state ny from the hash using the select! method
states.select! {|state, city| state == :ny}


# Print out modified hash
p states


# Reset Values
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

states = {ca: "San Fran", az: "Chandler", ny: "Manhattan", mx: "San Diego"}


# Print original array
p numbers


# Delete the number 4 from the array using the reject! method
numbers.reject! {|value| value == 4}


# Print out modified array.
p numbers


# Print out original hash.
p states


# Delete the state mx from the hash using the reject! method
states.select! {|state, city| state != :mx}


# Print out modified hash
p states