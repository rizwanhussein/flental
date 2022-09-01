# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Making
# 1 user
# two flats example

# # Create a seed
# #
# user.
# # Making
# # 1 user
# # two flats example

# users = User.new ([{:email aaa@abc.com :passwords:bbbbb name:oooo address:1 view }])
# users.save

# Puts name: "Richmond" name: "Kingston" name: "Shepherd Bush")
# puts "Cleaning the database"
Flat.destroy_all
User.destroy_all

user = User.create!(email: "admin@gmail.com", password: "1234567")

# flats = Flat.create(name: "Hoxton", street_address: "22 arundle avenue", rating: "4", user_id: user.id)


flats = Flat.create(name: "Cool flat🏠",
  user_id: user.id,
  street_address: "Ealing",
  description: "My Ealing Earl",
  capacity: 4
  # photo: cl_image_tag("", width: 400)
)

flats = Flat.create(name: "Expensive flat 🤑",
  user_id: user.id,
  street_address: "Kingston",
  description: "My Kingston commode",
  capacity: 1
)

flats = Flat.create(name: "Legends only 🤑",
  user_id: user.id,
  street_address: "Shepherd Bush",
  description: "My Shepherd Bush tucker trial",
  capacity: 10
)


flats = Flat.create(name: "My Shoreditch shwanky flat 👍",
  user_id: user.id,
  street_address: "Shoreditch",
  description: "so edgy",
  capacity: 8
)

# puts "Creating flats"

# 5.times do
#   flat = Flat.create(
#     name: Faker::Beer.brand,
#     street_address: Faker::Address.street_address,
#     city: Faker::Address.city,
#     postcode: Faker::Address.postcode,
#     photo: Faker::LoremFlickr.image,
#     rating: rand(1..5)
#   )
#   puts "flat name #{flat.name} on #{flat.street_address} and a rating of #{flat.rating} has been created"
# end

# 3.times do
#   user = User.create (
#   email: Faker::Internet.email,
#   password: Faker::Name.unique.name
#   )
# end
