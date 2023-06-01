# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Define regions of Western Cape, South Africa

require "faker"
require "open-uri"

# User data

puts "Creating users"

User.create(
  first_name: 'Hendrik',
  last_name: 'Oosthuizen',
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

file_fork = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685621058/development/65wy4kis2iwmdfnls9qye2g9flu8.jpg")

fork = Equipment.new(
  category: "garden",
  name: "Fork",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 10000.00),
  rented: 0,
  user_id: rand(1..5),
  description: "Used for loosening, lifting and turning over soil or compost in gardening and farming.
      It can be used to rake out stones and weeds and break up clods",
)
fork.photo.attach(io: file_fork, filename: "fork.png", content_type: "image/png")
fork.save

file_roller = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685091205/quecbpnbjkzjtheeg8p7.jpg")

roller = Equipment.new(
  category: "garden",
  name: "Garden Roller",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Garden roller is agricultural equipment used to flatten land or
   breaking up large lumps of soil after ploughing is done.",
)
roller.photo.attach(io: file_roller, filename: "roller.png", content_type: "image/png")
roller.save

file_lawnmower = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685091205/quecbpnbjkzjtheeg8p7.jpg")

lawnmower = Equipment.new(
  category: "garden",
  name: "Lawnmower (petrol)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Used for cutting of home grass.",
)
lawnmower.photo.attach(io: file_lawnmower, filename: "lawnmower.png", content_type: "image/png")
lawnmower.save

file_rake = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685091465/zhkb4yckwtjsrmbuvn2v.jpg")

rake = Equipment.new(
  category: "garden",
  name: "Rake",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: " A rake is a broom for outside use; a horticultural implement
  consisting of a toothed bar fixed transversely to a handle. It is used to
  collect leaves, hay, grass, etc., and, in gardening, for loosening the soil,
  light weeding and levelling, removing dead grass from lawns",
)
rake.photo.attach(io: file_rake, filename: "rake.png", content_type: "image/png")
rake.save

file_shovel = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685091262/cs3kqp2w7ky67kygg6bl.jpg")

shovel = Equipment.new(
  category: "garden",
  name: "Shovel/Spade",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "A shovel is the number one tool in most gardeners’ sheds, and
  it’s probably the most versatile. Shovels are common tools that are used
  extensively in agriculture, construction and gardening. It is used for
  collecting a lifting.",
)
shovel.photo.attach(io: file_shovel, filename: "shovel.png", content_type: "image/png")
shovel.save

file_weedeater = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685091325/xajyv4pkv8lfytec9h2u.jpg")

weedeater = Equipment.new(
  category: "garden",
  name: "Weedeater (Petrol)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Trimming lawn edges, Ideal for medium to larger gardens.",
)
weedeater.photo.attach(io: file_weedeater, filename: "weedeater.png", content_type: "image/png")
weedeater.save

# # Equipment data - Farm

file_auger = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685102593/tmzqtdj12ps6kvca3wzh.jpg")

auger = Equipment.new(
  category: "farm",
  name: "Auger / Two man earth drill",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Drilling holes in ground for planting wooden or concrete posts
  or poles.  Used in agriculture for planting wine posts, fencing posts or tree
  planting.",
)
auger.photo.attach(io: file_auger, filename: "auger.png", content_type: "image/png")
auger.save

file_pick = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685102764/dsdchjrzzup1qtp6fw4h.jpg")

pick = Equipment.new(
  category: "farm",
  name: "Pick",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "The pointed edge is most often used to break up rocky surfaces
  or other hard surfaces such as concrete or hardened dried earth. The large
  momentum of a heavy pickaxe, combined with the small contact area, makes it
  very effective for this purpose. The chiseled end, if present, is used for
  purposes including cutting through roots",
)
pick.photo.attach(io: file_pick, filename: "pick.png", content_type: "image/png")
pick.save

file_spray = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685102646/lshduxnxi3mei3lspz9i.jpg")

spray = Equipment.new(
  category: "farm",
  name: "Killa Spray",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "To spray and kill insects. Used to spray retarding agents on
  concrete."
)
spray.photo.attach(io: file_spray, filename: "spray.png", content_type: "image/png")
spray.save

file_chainsaw = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685102645/dhkie8qz1dkdfsm2obsd.jpg")

chainsaw = Equipment.new(
  category: "farm",
  name: "Chain Saw 2-Stroke",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Ideal for cutting down small to medium sized trees and trimming thick branches."
)
chainsaw.photo.attach(io: file_chainsaw, filename: "chainsaw.png", content_type: "image/png")
chainsaw.save

file_blower = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685102595/qosfhtbhevi2pjxn6zgd.jpg")

blower = Equipment.create(
  category: "farm",
  name: "Blower (Petrol)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Used in Garden Services for blowing of leaves and grass trimmings. Also handy on construction sites for dust removal.",
)
blower.photo.attach(io: file_blower, filename: "blower.png", content_type: "image/png")
blower.save

file_plough = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685102766/l08lawkoqbyo1q5ghov7.jpg")

plough = Equipment.new(
  category: "farm",
  name: "Plough / Tiller / Rotavator (Diesel)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Ploughing of small area soil or between vineyards. Also used to soften soil for digging long trenches.",
)
plough.photo.attach(io: file_plough, filename: "plough.png", content_type: "image/png")
plough.save


# Equipment data - Power Tools

file_router = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685108741/kropglitxkf4yywufkya.jpg")

router = Equipment.new(
  category: "power tools",
  name: "Router",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "For use with wood working application such as bevelling,routing
  and notching."
)
router.photo.attach(io: file_router, filename: "router.png", content_type: "image/png")
router.save

file_mixer = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685108740/tb06r6jlsrpgrwbxrjel.jpg")

mixer = Equipment.new(
  category: "power tools",
  name: "Mixer",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Use Hire-It's new Italian Universal Automatic mixer for tile
  adhesives, cement, grout, paint & epoxy resins.",
)
mixer.photo.attach(io: file_mixer, filename: "mixer.png", content_type: "image/png")
mixer.save

file_grinder = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685108698/nmghyvxhb7uerk8j9gaa.jpg")

grinder = Equipment.new(
  category: "power tools",
  name: "Grinder (Angle Grinder)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "The W2000 9” angle grinder is ideal for cutting, grinding and
  sanding applications. It is commonly used in the building and automotive
  industry",
)
grinder.photo.attach(io: file_grinder, filename: "grinder.png", content_type: "image/png")
grinder.save

file_compressor = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685108697/lcj8zyzdulhvs1wnnlr3.jpg")

compressor = Equipment.new(
  category: "power tools",
  name: "Compressor 100L",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Used as compressed air source for various pneumatic tools and
  applications including spray painting, pneumatic stapling, pneumatic nailing,
  pneumatic cleaning or blowers.",
)
compressor.photo.attach(io: file_compressor, filename: "compressor.png", content_type: "image/png")
compressor.save

file_sander = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685108624/hrdk0sg1bvsgcoeervqy.jpg")

sander = Equipment.new(
  category: "power tools",
  name: "Belt Sander",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Belt Sanders are handy for removing, surface sanding, smoothing
  and cleaning. They can be used on wood, plastic and metal.",
)
sander.photo.attach(io: file_sander, filename: "sander.png", content_type: "image/png")
sander.save

file_saw = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685108622/diiowrdt9sk3tdqsuadn.jpg")

saw = Equipment.new(
  category: "power tools",
  name: "All Purpose Saw (Electric)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "The All Purpose Saw is the perfect saw for all your household
  tasks such as cutting boards, metal and plastic pipes. Outdoors it can be used
  to cut back thick branches and bushes as a cheaper alternative to the chainsaw.",
)
saw.photo.attach(io: file_saw, filename: "saw.png", content_type: "image/png")
saw.save

# # Equipment data - drilling

file_rotary = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685110130/zyx8wmivez2n89exda1z.jpg")

rotary = Equipment.new(
  category: "drilling",
  name: "Rotary Drill",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "The perfect compact drill for all your concrete and masonry
  drilling, small yet very robust and effective.",
)
rotary.photo.attach(io: file_rotary, filename: "rotary.png", content_type: "image/png")
rotary.save

file_impact = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685110128/k6hnf0utdeffduuojn0i.jpg")

impact = Equipment.new(
  category: "drilling",
  name: "Impact Drill",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Impact drills are suited to a variety of jobs. It can be used
  in brick, steel & wood. The extended front handle allows greater control
  for high torque applications."
)
impact.photo.attach(io: file_impact, filename: "impact.png", content_type: "image/png")
impact.save

file_breakmed = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685110098/noiuzkrcqtkgzmmdm4z9.jpg")

breakmed = Equipment.new(
  category: "drilling",
  name: "Breaker Medium Duty",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Suited to breaking concrete slabs up to 150mm thick. Excellent
  handling due to large handle"
)
breakmed.photo.attach(io: file_breakmed, filename: "breakmed.png", content_type: "image/png")
breakmed.save

file_breaklight = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685110097/qus4wjax3s7ndzednili.jpg")

breaklight = Equipment.new(
  category: "drilling",
  name: "Breaker Light Duty",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Ideal for Breaking down walls or where other heavier breakers
  become unsuitable for horizontal handling. Also ideal for Heavy plaster
  and heavy tile removal on wall & floor."
)
breaklight.photo.attach(io: file_breaklight, filename: "breaklight.png", content_type: "image/png")
breaklight.save

file_breakheavy = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685110057/i0hmkvsf4age15prmrzs.jpg")

breakheavy = Equipment.new(
  category: "drilling",
  name: "Breaker Heavy Duty",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "Designed for heavy breaking applications and demolition work at
  floor level. Breaking up asphalt the quick, easy way for road building,
  repair work and pipe laying"
)
breakheavy.photo.attach(io: file_breakheavy, filename: "breakheavy.png", content_type: "image/png")
breakheavy.save

file_magdrill = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685110056/ascd9cli490ougnfkzxb.jpg")

magdrill = Equipment.new(
  category: "drilling",
  name: "Magnetic Base Drill",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "This magnetic drill is used for cutting precision holes of up to 50mm in most types of steel
  Its magnet base allows for drilling both horizontally and vertically",
)
magdrill.photo.attach(io: file_magdrill, filename: "magdrill.png", content_type: "image/png")
magdrill.save

# # Equipment data - Generators

file_welder = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685119400/uvusscemsobd542f0pnn.jpg")

welder = Equipment.new(
  category: "generators",
  name: "Welder Petrol",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "For use on light to heavy metal fabrication/ construction sites
  where there is no/ un-adequate electrical power to drive a welding plant."
)
welder.photo.attach(io: file_welder, filename: "welder.png", content_type: "image/png")
welder.save

file_light = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685119398/egsruusxe15tcvfqlobc.jpg")

light = Equipment.new(
  category: "generators",
  name: "Light Tower",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "The light tower is normally used for night construction and
  other field operations in the sectors of municipal engineering, road, bridge,
  port and mining etc as well as in the instance of night rush repairs and
  disaster relief operations."
)
light.photo.attach(io: file_light, filename: "light.png", content_type: "image/png")
light.save

file_kva10 = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685119362/udlpuuy40nvzr9idak0f.jpg")

kva10 = Equipment.new(
  category: "generators",
  name: "Generator 10 KVA",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "For use on light to medium construction sites where electrical
   power is needed. Normal household sites without power or power interruption.
   This power plant is easily started by means of a key and is fitted with a
   manual rope starter if in an event of a faulty starter or flat battery.",
)
kva10.photo.attach(io: file_kva10, filename: "kva10.png", content_type: "image/png")
kva10.save

file_kva8 = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685119361/s6vcjkh1qdyzrhrnguuh.jpg")

kva8 = Equipment.new(
  category: "generators",
  name: "Generator 8.5 KVA",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "For use on light to medium construction sites where electrical
  power is needed. Normal household sites without power or power interruption.
  This power plant is easily started by use of a manual rope starter so there
  is no need to worry about a flat acid battery or missing keys."
)
kva8.photo.attach(io: file_kva8, filename: "kva8.png", content_type: "image/png")
kva8.save

file_kva5 = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685119323/gr4e46r46xbjmvxetzyr.jpg")

kva5 = Equipment.new(
  category: "generators",
  name: "Generator 5 KVA(Semi Silent - Diesel)",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "For use on light to medium construction sites where electrical
  power is needed but without the noise and vibration of a normal open frame
  generator. Normal household sites without power or power interruption. This
  power plant is easily started by use of a manual rope starter so there is
  no need to worry about a flat acid battery or missing keys."
)
kva5.photo.attach(io: file_kva5, filename: "kva5.png", content_type: "image/png")
kva5.save

file_kva55 = URI.open("https://res.cloudinary.com/dcsmlleym/image/upload/v1685119321/ad2zuxtnf5d5vhqzhbsn.jpg")

kva55 = Equipment.new(
  category: "generators",
  name: "Generator 5.5 KVA",
  location: location.sample,
  quantity: rand(1..3),
  price: Faker::Number.between(from: 10.00, to: 1_000_000),
  rented: 0,
  user_id: rand(1..5),
  description: "For use on light to medium construction sites where electrical
  power is needed. Normal household sites without power or power interruption.
  This power plant is easily started by use of a manual rope starter so there
  is no need to worry about a flat acid battery or missing keys."
)
kva55.photo.attach(io: file_kva55, filename: "kva55.png", content_type: "image/png")
kva55.save


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
