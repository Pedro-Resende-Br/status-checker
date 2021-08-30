# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Server.new(status: "UP").save
Server.new(status: "DOWN").save
Info.new(status: "UP", text: "The server is up and running").save
Info.new(status: "DOWN", text: "The server is not working").save
