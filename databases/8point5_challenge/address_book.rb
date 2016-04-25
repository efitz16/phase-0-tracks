require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("an_address_book.db")
db.results_as_hash = true

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS address_book(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    phone_num INT,
    city VARCHAR(255),
    called BOOLEAN
  )
SQL

db.execute(create_table)

def create_an_address_book(db, name, phone_num, city, called)
  db.execute("INSERT INTO address_book (name, phone_num, city, called) VALUES (?, ?, ?, ?)", [name, phone_num, city, called])
end

def search_by_name(db, the_lookup_name)
  the_number = db.execute("SELECT phone_num FROM address_book WHERE name=?;", [the_lookup_name])

  the_number.each do |name|
    puts "#{name['phone_num']}"
  end
end

def call_person(db, the_lookup_name, value)
  db.execute("UPDATE address_book SET called=? WHERE name=?;", [value, the_lookup_name])

  entry = db.execute("SELECT * FROM address_book WHERE name=?;", [the_lookup_name])
  entry.each do |name|
    puts "#{name['name']}: #{name['phone_num']}"
    puts "Called: #{name['called']}"
  end
end

103.times do
  create_an_address_book(db, Faker::Name.name, Faker::PhoneNumber.phone_number, Faker::Address.city, "false")
end

names_and_nums = db.execute("SELECT * FROM address_book")
names_and_nums.each do |name|
  puts "#{name['name']}: #{name['phone_num']}"
end

puts # line break

loop do

  puts "Would you like to look up a number (y/n)?"
  
  ans =  gets.chomp

  puts
  
  break if ans == "n" || ans == "no"
  puts "Please enter a name: "

  lookup_name = gets.chomp

  search_by_name(db, lookup_name)

  puts

  puts "Call (y/n)?"

  call = gets.chomp

  puts

  if call == "y" || call == "yes"
    call_person(db, lookup_name, "true")
    puts
  end
end