# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Define regions of Western Cape, South Africa

require "faker"

# User data

puts "Creating users"

User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: "user1",
  email: "user1@gmail.com",
  password: "password",
)

User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: "user2",
  email: "user2@gmail.com",
  password: "password",
)

User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: "user3",
  email: "user3@gmail.com",
  password: "password",
)

User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: "user4",
  email: "user4@gmail.com",
  password: "password",
)

User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: "user5",
  email: "user5@gmail.com",
  password: "password",
)

puts "#{User.all.count} users created"

# Equipment data

puts "Creating equipment rentals"

location = [
  "Cape Town",
  "Stellenbosch",
  "George",
  "Paarl",
  "Worcester",
  "Hermanus",
]

# category = [
#   "garden",
#   "lawn",
#   "farm",
#   "power tools",
#   "pool",
#   "carpentry",
# ]

# category.each do |category|
# 5.times do
# Create a new equipment
Equipment.create(
  category: "garden",
  name: "Fork",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 10000.00),
  rented: 0,
  user_id: rand(1..5),
  item_url: "kq5mwn8gxn84ywbsbyfl", # Replace with actual image URL
  description: "Used for loosening, lifting and turning over soil or compost in gardening and farming.
      It can be used to rake out stones and weeds and break up clods",
)
# end
# end

puts "#{Equipment.all.count} equipment items created"

# Rental data

puts "Creating rentals"

Rental.create(
  rented_date: "25 May 2023",
  return_date: "30 May 2023",
  equipment_id: rand(1..5),
  user_id: rand(1..5),
)

Rental.create(
  rented_date: "25 May 2023",
  return_date: "30 May 2023",
  equipment_id: rand(1..5),
  user_id: rand(1..5),
)

Rental.create(
  rented_date: "25 May 2023",
  return_date: "30 May 2023",
  equipment_id: rand(1..5),
  user_id: rand(1..5),
)

Rental.create(
  rented_date: "25 May 2023",
  return_date: "30 May 2023",
  equipment_id: rand(1..5),
  user_id: rand(1..5),
)

Rental.create(
  rented_date: "25 May 2023",
  return_date: "30 May 2023",
  equipment_id: rand(1..5),
  user_id: rand(1..5),
)

puts "#{Rental.all.count} rentals created"

puts "Database completed"
