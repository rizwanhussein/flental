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
Flat.destroy_all
User.destroy_all

user = User.create!(email: "admin@gmail.com", password: "1234567")

flats = Flat.create(name: "Hoxton", user_id: user.id)

flats = Flat.create(name: "Ealing", user_id: user.id )

flats = Flat.create(name: "Kingston", user_id: user.id )

flats = Flat.create(name: "Shepherd Bush", user_id: user.id )

flats = Flat.create(name: "Shoreditch", user_id: user.id )
