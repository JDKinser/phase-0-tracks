# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # input list items through variable
  # split list items
  # set default quantity for 1
  # print the list to the console [can you use one of your other methods here?]
  # output: [what data type goes here, array or hash?] HASH

def create_list(items)
	list = {}
	item_list = items.split(' ')
	item_list.each do |i|
		list[i] = 1
	end
	list	
end	

New_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps:  name, quantity
# output: adding to list and quantity hash

def add_item(new_item, quantity)
	New_list[new_item] = quantity
end	

add_item("Beets", 2)
p New_list

# Method to remove an item from the list
# input: name of item
# steps: check list and remove item
# output: updated hash with item removed

def remove_item(delete_me)
	New_list.delete(delete_me)
end

remove_item("Beets")
p New_list	

# Method to update the quantity of an item
# input: name of item
# steps: locate item in hash, update value with user quantity
# output: updated hash


def update_quantity(item, quantity)
	New_list[item] = quantity
end

add_item("apples", 4)
p New_list

# Method to print a list and make it look pretty
# input: method 'print'
# steps: writing a puts statement and use .each to cycle through hash
# output: example below.
# Grocery item: #{item}, Quantity: #{quantity}

def print_list
	puts "What would you like to call your list?"
	name = gets.chomp
	puts "---------------------------------------"
	puts "List Name: #{name}"
	puts "---------------------------------------"
	New_list.each do |key, value|
		puts "Item: #{key}\t|\t Quantity: #{value}"
	end
	puts "---------------------------------------"
end

print_list	