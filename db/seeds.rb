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
#   "drilling",
#   "generators",
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

# Equipment data - Power Tools

Equipment.create(
  category: "power tools",
  name: "Router",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "kropglitxkf4yywufkya", # Replace with actual image URL
  description: "For use with wood working application such as bevelling,routing
  and notching.",
)

Equipment.create(
  category: "power tools",
  name: "Mixer",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "tb06r6jlsrpgrwbxrjel", # Replace with actual image URL
  description: "Use Hire-It's new Italian Universal Automatic mixer for tile
  adhesives, cement, grout, paint & epoxy resins.",
)

Equipment.create(
  category: "power tools",
  name: "Grinder (Angle Grinder)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "nmghyvxhb7uerk8j9gaa", # Replace with actual image URL
  description: "The W2000 9” angle grinder is ideal for cutting, grinding and
  sanding applications. It is commonly used in the building and automotive
  industry",
)

Equipment.create(
  category: "power tools",
  name: "Compressor 100L",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "lcj8zyzdulhvs1wnnlr3", # Replace with actual image URL
  description: "Used as compressed air source for various pneumatic tools and
  applications including spray painting, pneumatic stapling, pneumatic nailing,
  pneumatic cleaning or blowers.",
)

Equipment.create(
  category: "power tools",
  name: "Belt Sander",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "hrdk0sg1bvsgcoeervqy", # Replace with actual image URL
  description: "Belt Sanders are handy for removing, surface sanding, smoothing
  and cleaning. They can be used on wood, plastic and metal.",
)

Equipment.create(
  category: "power tools",
  name: "All Purpose Saw (Electric)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "diiowrdt9sk3tdqsuadn", # Replace with actual image URL
  description: "The All Purpose Saw is the perfect saw for all your household
  tasks such as cutting boards, metal and plastic pipes. Outdoors it can be used
  to cut back thick branches and bushes as a cheaper alternative to the chainsaw.",
)

# Equipment data - drilling

Equipment.create(
  category: "drilling",
  name: "Rotary Drill",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "zyx8wmivez2n89exda1z", # Replace with actual image URL
  description: "The perfect compact drill for all your concrete and masonry
  drilling, small yet very robust and effective.",
)

Equipment.create(
  category: "drilling",
  name: "Impact Drill",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "k6hnf0utdeffduuojn0i", # Replace with actual image URL
  description: "Impact drills are suited to a variety of jobs. It can be used
  in brick, steel & wood. The extended front handle allows greater control
  for high torque applications.",
)

Equipment.create(
  category: "drilling",
  name: "Breaker Medium Duty",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "noiuzkrcqtkgzmmdm4z9", # Replace with actual image URL
  description: "Suited to breaking concrete slabs up to 150mm thick. Excellent
  handling due to large handle",
)

Equipment.create(
  category: "drilling",
  name: "Breaker Light Duty",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "qus4wjax3s7ndzednili", # Replace with actual image URL
  description: "Ideal for Breaking down walls or where other heavier breakers
  become unsuitable for horizontal handling. Also ideal for Heavy plaster
  and heavy tile removal on wall & floor.",
)

Equipment.create(
  category: "drilling",
  name: "Breaker Heavy Duty",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "i0hmkvsf4age15prmrzs", # Replace with actual image URL
  description: "Designed for heavy breaking applications and demolition work at
  floor level. Breaking up asphalt the quick, easy way for road building,
  repair work and pipe laying",
)

Equipment.create(
  category: "drilling",
  name: "Magnetic Base Drill",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "ascd9cli490ougnfkzxb", # Replace with actual image URL
  description: "This magnetic drill is used for cutting precision holes of up to 50mm in most types of steel
  Its magnet base allows for drilling both horizontally and vertically",
)

# Equipment data - Generators

Equipment.create(
  category: "generators",
  name: "Welder Petrol",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "uvusscemsobd542f0pnn", # Replace with actual image URL
  description: "For use on light to heavy metal fabrication/ construction sites
  where there is no/ un-adequate electrical power to drive a welding plant.",
)

Equipment.create(
  category: "generators",
  name: "Light Tower",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "egsruusxe15tcvfqlobc", # Replace with actual image URL
  description: "The light tower is normally used for night construction and
  other field operations in the sectors of municipal engineering, road, bridge,
  port and mining etc as well as in the instance of night rush repairs and
  disaster relief operations.",
)

Equipment.create(
  category: "generators",
  name: "Generator 10 KVA",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "udlpuuy40nvzr9idak0f", # Replace with actual image URL
  description: "For use on light to medium construction sites where electrical
   power is needed. Normal household sites without power or power interruption.
   This power plant is easily started by means of a key and is fitted with a
   manual rope starter if in an event of a faulty starter or flat battery.",
)

Equipment.create(
  category: "generators",
  name: "Generator 8.5 KVA",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "s6vcjkh1qdyzrhrnguuh", # Replace with actual image URL
  description: "For use on light to medium construction sites where electrical
  power is needed. Normal household sites without power or power interruption.
  This power plant is easily started by use of a manual rope starter so there
  is no need to worry about a flat acid battery or missing keys.",
)

Equipment.create(
  category: "generators",
  name: "Generator 5 KVA(Semi Silent - Diesel)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "gr4e46r46xbjmvxetzyr", # Replace with actual image URL
  description: "For use on light to medium construction sites where electrical
  power is needed but without the noise and vibration of a normal open frame
  generator. Normal household sites without power or power interruption. This
  power plant is easily started by use of a manual rope starter so there is
  no need to worry about a flat acid battery or missing keys.",
)

Equipment.create(
  category: "generators",
  name: "Generator 5.5 KVA",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  item_url: "ad2zuxtnf5d5vhqzhbsn", # Replace with actual image URL
  description: "For use on light to medium construction sites where electrical
  power is needed. Normal household sites without power or power interruption.
  This power plant is easily started by use of a manual rope starter so there
  is no need to worry about a flat acid battery or missing keys.",
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
