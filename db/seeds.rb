# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Chatroom.create(name: "general")
User.create(email: "ilona@lewagon.org", nickname: "ilona", password: "123456")
User.create(email: "alexis@lewagon.org", nickname: "alexis", password: "123456")
User.create(email: "patrik@lewagon.org", nickname: "patrik", password: "123456")
User.create(email: "iva@lewagon.org", nickname: "iva", password: "123456")

puts 'done :)'
