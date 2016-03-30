def add_to(array, item)
	array << item
end	


def mk_array(first, second, third)
	list = [first, second, third]
end

movies = []
p movies

movies = movies + ["Fight Club", "Life Aquatic", "Royal Tennenbaums", "Scarface", "TRON"]
p movies

movies.delete_at(2)
p movies

movies.insert(2, "Pulp Fiction")
p movies

movies.delete("Fight Club")
p movies

puts "It is #{movies.include?("TRON")} that the array 'movies' includes TRON."

TV = ["Hannibal", "Lost", "Fringe"]
p TV

favorites = movies + TV
p favorites

test = mk_array("this", "that", "another")
p test

test2 = add_to([], "hello world")
p test2

test3 = add_to(TV, "hello world")
p test3