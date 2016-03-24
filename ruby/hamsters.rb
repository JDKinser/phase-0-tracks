puts "Please enter Hamster name: "
  name = gets.chomp

puts "Hamster Squeek Level (1-10): "
  noise = gets.chomp.to_i

puts "Color of glorious coat: "
  coat = gets.chomp

puts "Does hamster play well with others (Y/N): "
  adoption = gets.chomp.capitalize

puts "Estimated Age (optional): "
  age = gets.chomp
  
if age == "" 
  age = nil
end


puts "New Hamster Information: "
puts "The hamster's name is: #{name}"
puts "His squeek level is: #{noise}"
puts "His majestic coat is colored: #{coat}"
puts "Is he a good candidate for adoption?: #{adoption}"

if age == nil 
  puts "Age of hamster is unknown"    
else
  puts "We approximate he is #{age} years old."
end