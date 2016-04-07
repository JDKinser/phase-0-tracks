class TodoList

	def initialize(chores)
		@list = []
		@list << chores
		@list.flatten!
		@list
	end

	def get_items
		puts "The list: #{@list}"
		@list
	end
	
	def get_item(num)
		@list.at(num)
	end	

	def add_item(new_item)
		@list << new_item
	end	

	def delete_item(thing)
		@list.delete(thing)
	end
end