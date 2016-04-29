# require gems
require 'sinatra'
require "sinatra/reloader"
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/campus' do
	@chi = db.execute("SELECT * FROM students WHERE campus='CHI'")
	@sd = db.execute("SELECT * FROM students WHERE campus='SD'")
	@sf = db.execute("SELECT * FROM students WHERE campus='SF'")
	@sea = db.execute("SELECT * FROM students WHERE campus='SEA'")
	@nyc = db.execute("SELECT * FROM students WHERE campus='NYC'")
  erb :campus
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources