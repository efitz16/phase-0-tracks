# require gems
require 'sinatra'
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

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

get '/students/SDcampus' do
	@students = db.execute("SELECT * FROM students WHERE campus='SD'")
	@city_name = "San Diego"
	erb :list_campus
end

get '/students/CHIcampus' do
	@students = db.execute("SELECT * FROM students WHERE campus='CHI'")
	@city_name = "Chicago"
	erb :list_campus
end

get '/students/NYCcampus' do
	@students = db.execute("SELECT * FROM students WHERE campus='NYC'")
	@city_name = "New York"
	erb :list_campus
end

get '/students/SFcampus' do
	@students = db.execute("SELECT * FROM students WHERE campus='SF'")
	@city_name = "San Francisco"
	erb :list_campus
end

get '/students/SEAcampus' do
	@students = db.execute("SELECT * FROM students WHERE campus='SEA'")
	@city_name = "Seattle"
	erb :list_campus
end
