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