# Method to push letters 1 forward (encrypt)
# set a counter system so the loop is not infinite
# move each letter forward 1 using .next and replace the original
# correct "fringe" issues of 'z' moving forward to 'ab'
# present result

def encrypt(code)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	word_length = code.length
	counter = 0

	while counter < word_length
		if code[counter] == "z"
			code[counter] = "a"
			counter += 1
		elsif code[counter] == " "
			code[counter] = " "
			counter += 1	
		else 
			code[counter] = alpha[(alpha.index("#{code[counter]}")) + 1]
			counter += 1
		end
	end
	return code
end	

## p encrypt("zed")			


# Method to push letters 1 back & present result (decrypt)
# set a counter system so the loop is not infinite
# define alphabet so we can move backwards
# navigate how to pull index location of letter in code from alphabet
# use that discovered location and move back 1 in the index
# present result

def decrypt(code)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	word_length = code.length
	counter = 0

	while counter < word_length
		if code[counter] == " "
			code[counter] = " "
			counter += 1	
		else
			code[counter] = alpha[(alpha.index("#{code[counter]}")).to_i - 1]
			counter += 1
		end	
	end
	return code
end	

## p decrypt("afe")

## p encrypt("this isnt terrible")

## p decrypt("uijt jtou ufssjcmf")

# Capital letters prevent "decrypt(encrypt("The duck flies at midnight"))""
# from properly functioning. This program currently only supports lower-case
# the program should either be adjusted or the phrase can be adjusted to make
# this work.


## p decrypt(encrypt("the duck flies at midnight"))

puts "Do you want to encrypt or decrypt?"
	choice = gets.chomp
	if choice == "decrypt"
		puts "Ok, cool. Let's decrypt your secret message. Please type it here: "
		message = gets.chomp
		puts "Here's your secret code:\n #{decrypt(message)}"
	elsif choice == "encrypt"
		puts "Ok, cool. Let's encrypt your secret message. Please type it here: "
		message = gets.chomp
		puts "Here's your secret code:\n #{encrypt(message)}"
	else
		puts "Baxter, you know I don't speak Spanish."
	end