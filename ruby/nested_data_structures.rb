#Dresser nesting.
dresser = {
	top_drawer: {
		contents: 'socks',
		sock_count: {
			black: 8,
			white: 10,
			brown: 2
			},
		sock_type: [
			"paired",
			"single",
			"holes"
			]
		},
	middle_drawer: {
		contents: 'shirts',
		shirt_count: {
			t_shirt: 5,
			button_up: 3,
			v_neck: 2
			},
		shirt_type: [
			"favorite",
			"new",
			"stained"
			]
		},
	bottom_drawer: {
		contents: 'pants',
		pants_count: {
			jeans: 6,
			slacks: 2,
			sweat: 4
			},
		pants_type: [
			"tight",
			"loose",
			"favorite",
			"faded"
			]
		}
	}

#Print the contents of the top drawer.
print "The contents of the top drawer: "
puts dresser[:top_drawer][:contents]

#Print how many black socks there are.
print "How many black socks do we have: "
puts dresser[:top_drawer][:sock_count][:black]

#Delete socks with holes
puts "These are the types of socks you have: "
puts dresser[:top_drawer][:sock_type]
dresser[:top_drawer][:sock_type].delete_at(2)
puts "These are the types of socks you now have: "
puts dresser[:top_drawer][:sock_type]

#Print the contents of the top drawer.
print "The contents of the middle drawer: "
puts dresser[:middle_drawer][:contents]

#Print the contents of the top drawer.
print "The contents of the bottom drawer: "
puts dresser[:bottom_drawer][:contents]