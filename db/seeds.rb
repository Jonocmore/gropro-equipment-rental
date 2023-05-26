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

# Equipment data - Garden

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
#
#   "lawn",
#   "farm",
#   "power tools",
#   "pool",
#   "carpentry",
# ]

Equipment.create(
  category: "garden",
  name: "Fork",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 10000.00),
  rented: 0,
  user_id: rand(1..5),
  item_url: "jos0zjj3gk6gagkohyu2", # Replace with actual image URL
  description: "Used for loosening, lifting and turning over soil or compost in gardening and farming.
      It can be used to rake out stones and weeds and break up clods",
)

Equipment.create(
  category: "garden",
  name: "Garden Roller",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "quecbpnbjkzjtheeg8p7", # Replace with actual image URL
  description: "Garden roller is agricultural equipment used to flatten land or
   breaking up large lumps of soil after ploughing is done.",
)

Equipment.create(
  category: "garden",
  name: "Lawnmower (petrol)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "u3xig2uxhnmfle6jqeoe", # Replace with actual image URL
  description: "Used for cutting of home grass.",
)

Equipment.create(
  category: "garden",
  name: "Rake",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "zhkb4yckwtjsrmbuvn2v", # Replace with actual image URL
  description: " A rake is a broom for outside use; a horticultural implement
  consisting of a toothed bar fixed transversely to a handle. It is used to
  collect leaves, hay, grass, etc., and, in gardening, for loosening the soil,
  light weeding and levelling, removing dead grass from lawns",
)

Equipment.create(
  category: "garden",
  name: "Shovel/Spade",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "cs3kqp2w7ky67kygg6bl", # Replace with actual image URL
  description: "A shovel is the number one tool in most gardeners’ sheds, and
  it’s probably the most versatile. Shovels are common tools that are used
  extensively in agriculture, construction and gardening. It is used for
  collecting a lifting.",
)

Equipment.create(
  category: "garden",
  name: "Weedeater (Petrol)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "xajyv4pkv8lfytec9h2u", # Replace with actual image URL
  description: "Trimming lawn edges, Ideal for medium to larger gardens.",
)

# Equipment data - Farm

Equipment.create(
  category: "farm",
  name: "Auger / Two man earth drill",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "tmzqtdj12ps6kvca3wzh", # Replace with actual image URL
  description: "Drilling holes in ground for planting wooden or concrete posts
  or poles.  Used in agriculture for planting wine posts, fencing posts or tree
  planting.",
)

Equipment.create(
  category: "farm",
  name: "Pick",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "dsdchjrzzup1qtp6fw4h", # Replace with actual image URL
  description: "The pointed edge is most often used to break up rocky surfaces
  or other hard surfaces such as concrete or hardened dried earth. The large
  momentum of a heavy pickaxe, combined with the small contact area, makes it
  very effective for this purpose. The chiseled end, if present, is used for
  purposes including cutting through roots",
)

Equipment.create(
  category: "farm",
  name: "Killa Spray",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "lshduxnxi3mei3lspz9i", # Replace with actual image URL
  description: "To spray and kill insects. Used to spray retarding agents on
  concrete.",
)

Equipment.create(
  category: "farm",
  name: "Chain Saw 2-Stroke",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "dhkie8qz1dkdfsm2obsd", # Replace with actual image URL
  description: "Ideal for cutting down small to medium sized trees and trimming thick branches.",
)

Equipment.create(
  category: "farm",
  name: "Blower (Petrol)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "qosfhtbhevi2pjxn6zgd", # Replace with actual image URL
  description: "Used in Garden Services for blowing of leaves and grass trimmings. Also handy on construction sites for dust removal.",
)

Equipment.create(
  category: "farm",
  name: "Plough / Tiller / Rotavator (Diesel)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "l08lawkoqbyo1q5ghov7", # Replace with actual image URL
  description: "Ploughing of small area soil or between vineyards. Also used to soften soil for digging long trenches.",
)

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
