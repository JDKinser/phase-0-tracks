# Car Selling App

# require gem
require 'sqlite3'

# create SQLite3 database and set it equal to the variable db
db = SQLite3::Database.new("carsales.db")
db.results_as_hash = true

create_cars_table = <<-SQL
  CREATE TABLE IF NOT EXISTS cars(
    id INTEGER PRIMARY KEY,
    seller VARCHAR(255),
    make_id INT,
    model VARCHAR(255),
    year INT,
    price INT,
    FOREIGN KEY (make_id) REFERENCES makes(id)
  )
SQL

create_makes_table = <<-SQL
    CREATE TABLE IF NOT EXISTS makes(
    id INTEGER PRIMARY KEY,
    make VARCHAR(255)
  )
SQL

# create a main_list table (if it's not there already)
db.execute(create_cars_table)
db.execute(create_makes_table)

# *****************************************************************************

# method to add a listing
def add_listing(db, seller, make_id, model, year, price)
  db.execute("INSERT INTO cars (seller, make_id, model, year, price) VALUES (?, ?, ?, ?, ?)", [seller, make_id, model, year, price])
end

# method to add a make
def add_make(db, make)
  db.execute("INSERT INTO makes (make) VALUES (?)", [make])
end

# method to delete a listing
def delete_listing(db, id)
	db.execute("DELETE FROM cars WHERE id=?", [id])
end

# method to delete a make
def delete_make(db, id)
  db.execute("DELETE FROM makes WHERE id=?", [id])
end

# method to update cars seller
def update_seller(db, id, seller)
  db.execute("UPDATE cars SET seller=? WHERE id=?", [seller, id]) 
end

# method to update cars model
def update_model(db, id, model)
  db.execute("UPDATE cars SET model=? WHERE id=?", [model, id]) 
end

# method to update cars year
def update_year(db, id, year)
  db.execute("UPDATE cars SET year=? WHERE id=?", [year, id]) 
end

# method to update cars price
def update_price(db, id, price)
  db.execute("UPDATE cars SET price=? WHERE id=?", [price, id])
end

# method to update cars make
def update_make(db, id, make)
  db.execute("UPDATE makes SET make=? WHERE id=?", [make, id])
end

# *****************************************************************************

# Driver code:
  
# add_listing(db, "Jesse Kinser", 1, "Miata", 1991, 4000)
# add_listing(db, "Jesse Kinser", 1, "cx 5", 1998, 2000)
# add_make(db, "mazda")
# delete_listing(db, 1)
# delete_make(db, 1)
# update_seller(db, 2, "James Dean")
# update_model(db, 2, "6")
# update_year(db, 2, 1997)
# update_price(db, 2, 2500)
# update_make(db, 1, "Mazda")

# Run this in SQLite console to see the two Tables in one.
# SELECT cars.seller, makes.make, cars.model, cars.year, cars.price FROM cars
# JOIN makes ON cars.make_id = makes.id;

# *****************************************************************************

