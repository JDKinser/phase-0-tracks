# Car Selling App
# *****************************************************************************

# require gem
require 'sqlite3'

# create SQLite3 database and set it equal to the variable db
db = SQLite3::Database.new("carsales.db")
db.results_as_hash = true

# create cars table and set it to a variable
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

# create makes table and set it to a variable
create_makes_table = <<-SQL
    CREATE TABLE IF NOT EXISTS makes(
    id INTEGER PRIMARY KEY,
    make VARCHAR(255)
  )
SQL

# create the tables (if they are not there already)
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

# method to update cars seller
def update_make_id(db, id, make_id)
  db.execute("UPDATE cars SET make_id=? WHERE id=?", [make_id, id]) 
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

# UI

# Set the makes of all vehicles you want to sell.
status1 = false
puts "-" * 65
puts "Hello, welcome to Car Listing Pro!"
puts "-" * 65
puts
puts "Once you have entered the make of the vehicles you wish to sell"
puts "type 'done' and we will move on to the next step."

until status1 == true

print "\nPlease enter the make of the vehicle you wish to list: "
make = gets.chomp.upcase
  if make == "DONE"
    status1 = true
  else
    add_make(db, make)
  end
end

# This is where all the good stuff happens!
status2 = false
puts
puts "-" * 65
puts "If you wish to leave the program type 'exit' and the program will close."

until status2 == true

puts "\nPlease type one of the following to input the information needed."
print "\n[1]'Add Listing', [2]'Update', [3]'Delete', [4]'List Info', [5]'Exit': "

input = gets.chomp.to_i
  if input == 5 # Exit
    status2 = true
  elsif input == 4 # List Info
    puts "\nHere is a list of the data"
    puts "-" * 65
    data = db.execute("SELECT * FROM cars")
    puts "ID |   Seller   |  Model  |  Year  |  Price  "
    puts
    data.each do |item|
      puts "#{item["id"]} | #{item["seller"]} | #{item["model"]} | #{item["year"]} | #{item["price"]}"
    end
    puts "-" * 65
  elsif input == 1 # Add Listing
    print "\nPlease enter the name of the seller: "
    seller = gets.chomp.upcase
    
    puts
    puts "-" * 65
    make_id = db.execute("SELECT * FROM makes")
    make_id.each do |item|
      puts "#{item["make"]} has the id: #{item["id"]}"
    end
    puts "-" * 65
    
    puts "\nPlease enter the number listed above that matches the make of"
    print "the vehicle you wish to sell: "
    make_id = gets.chomp.to_i
    
    print "Please enter the model of the vehicle: "
    model = gets.chomp.upcase
    
    print "Please enter the year of the vehicle: "
    year = gets.chomp.to_i
    
    print "Please enter the price of the vehicle: "
    price = gets.chomp.to_i
    
    add_listing(db, seller, make_id, model, year, price)
    
  elsif input == 2 # Update
    puts "\nWhat would you like to update?"
    puts "-" * 65
    puts "[1]'Seller', [2]'Make', [3]'MakeID', [4]'Model', [5]'Year', [6]'Price'"
    puts "-" * 65
    toUpdate = gets.chomp.to_i
    if toUpdate == 1 # Seller
      puts "\nHere is a list of sellers."
      puts "-" * 65
      sellers = db.execute("SELECT * FROM cars")
      sellers.each do |item|
        puts "ID: #{item["id"]} | Seller: #{item["seller"]}"
      end
      puts "-" * 65
      print "What is the ID of the Seller to be updated: "
      id = gets.chomp.to_i
      print "Please enter updated name: "
      seller = gets.chomp.upcase
      update_seller(db, id, seller)
      puts "-" * 65
      sellers = db.execute("SELECT * FROM cars")
      sellers.each do |item|
        puts "ID: #{item["id"]} | Seller: #{item["seller"]}"
      end
      puts "-" * 65
      
    elsif toUpdate == 2 # Make
      puts "\nHere is a list of Makes."
      puts "-" * 65
      makes = db.execute("SELECT * FROM makes")
      makes.each do |item|
        puts "ID: #{item["id"]} | Make: #{item["make"]}"
      end
      puts "-" * 65
      print "What is the ID of the Make to be updated: "
      id = gets.chomp.to_i
      print "Please enter updated Make: "
      make = gets.chomp.upcase
      update_make(db, id, make)
      puts "-" * 65
      makes = db.execute("SELECT * FROM makes")
      makes.each do |item|
        puts "ID: #{item["id"]} | Make: #{item["make"]}"
      end
      puts "-" * 65
      
    elsif toUpdate == 3 # MakeID
      puts "\nHere is a list of MakeIDs."
      puts "-" * 65
      makeids = db.execute("SELECT * FROM cars")
      makeids.each do |item|
        puts "ID: #{item["id"]} | MakeID: #{item["make_id"]}"
      end
      puts "-" * 65
      print "What is the ID of the MakeID to be updated: "
      id = gets.chomp.to_i
      print "Please enter updated MakeID: "
      make_id = gets.chomp.to_i
      update_make_id(db, id, make_id)
      puts "-" * 65
      makeids = db.execute("SELECT * FROM cars")
      makeids.each do |item|
        puts "ID: #{item["id"]} | MakeID: #{item["make_id"]}"
      end
      puts "-" * 65
      
    elsif toUpdate == 4 # Model
      puts "\nHere is a list of Models."
      puts "-" * 65
      models = db.execute("SELECT * FROM cars")
      models.each do |item|
        puts "ID: #{item["id"]} | Model: #{item["model"]}"
      end
      puts "-" * 65
      print "What is the ID of the Model to be updated: "
      id = gets.chomp.to_i
      print "Please enter updated Model: "
      model = gets.chomp.upcase
      update_model(db, id, model)
      puts "-" * 65
      models = db.execute("SELECT * FROM cars")
      models.each do |item|
        puts "ID: #{item["id"]} | Model: #{item["model"]}"
      end
      puts "-" * 65
      
    elsif toUpdate == 5 # Year 
      puts "\nHere is a list of Years."
      puts "-" * 65
      years = db.execute("SELECT * FROM cars")
      years.each do |item|
        puts "ID: #{item["id"]} | Year: #{item["year"]}"
      end
      puts "-" * 65
      print "What is the ID of the Year to be updated: "
      id = gets.chomp.to_i
      print "Please enter updated Year: "
      year = gets.chomp.to_i
      update_year(db, id, year)
      puts "-" * 65
      years = db.execute("SELECT * FROM cars")
      years.each do |item|
        puts "ID: #{item["id"]} | Year: #{item["year"]}"
      end
      puts "-" * 65
      
    elsif toUpdate == 6 # Price
      puts "\nHere is a list of Prices."
      puts "-" * 65
      prices = db.execute("SELECT * FROM cars")
      prices.each do |item|
        puts "ID: #{item["id"]} | Price: #{item["price"]}"
      end
      puts "-" * 65
      print "What is the ID of the Price to be updated: "
      id = gets.chomp.to_i
      print "Please enter updated Price: "
      price = gets.chomp.to_i
      update_price(db, id, price)
      puts "-" * 65
      prices = db.execute("SELECT * FROM cars")
      prices.each do |item|
        puts "ID: #{item["id"]} | Price: #{item["price"]}"
      end
      puts "-" * 65
      
    else
      puts "\nInput not recognized. Please enter number next to item to be updated."
    end
    
  elsif input == 3 # Delete
    puts "\nWhat would you like to delete?"
    puts "-" * 65
    puts "[1]'Listing', [2]'Make'"
    puts "-" * 65
    toDelete = gets.chomp.to_i
      if toDelete == 1
        puts "\nHere are your Listings."
        puts "-" * 65
        listing = db.execute("SELECT * FROM cars")
        listing.each do |item|
          puts "#{item["id"]} | #{item["seller"]} | #{item["model"]}"
        end
        puts "-" * 65
        print "What is the ID of the Listing to be deleted: "
        id = gets.chomp.to_i
        delete_listing(db, id)
        puts
        puts "-" * 65
        listing = db.execute("SELECT * FROM cars")
        listing.each do |item|
          puts "#{item["id"]} | #{item["seller"]} | #{item["model"]}"
        end
        puts "-" * 65
        
      elsif toDelete == 2
        puts "\nHere are your Makes."
        puts "-" * 65
        makes = db.execute("SELECT * FROM makes")
        makes.each do |item|
          puts "#{item["id"]} | #{item["make"]}"
        end
        puts "-" * 65
        print "What is the ID of the Make to be deleted: "
        id = gets.chomp.to_i
        delete_make(db, id)
        puts
        puts "-" * 65
        makes = db.execute("SELECT * FROM cars")
        makes.each do |item|
          puts "#{item["id"]} | #{item["make"]}"
        end
        puts "-" * 65
        
      else
        puts "\nInput not recognized. Please enter number next to item to be deleted."
      end
  else
    puts "\nInput not recognized. Please enter number next to what you would like to do."
  end
end

# *****************************************************************************

# There is a few things I could do to refactor this but I feel like most of it
# is for purdification. 
# I am pretty happy with it, but if you have ideas let me know! :D
# ENJOY!
