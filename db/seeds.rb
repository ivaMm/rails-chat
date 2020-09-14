# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Chatroom.destroy_all
User.destroy_all

Chatroom.create(name: "batch-386")
Chatroom.create(name: "general")
Chatroom.create(name: "berlin")
Chatroom.create(name: "career")
Chatroom.create(name: "design")
Chatroom.create(name: "help")
Chatroom.create(name: "freelancers")
Chatroom.create(name: "ruby")
Chatroom.create(name: "jobs")
Chatroom.create(name: "javascript")
Chatroom.create(name: "product")
Chatroom.create(name: "resources")

User.create(email: "ilona@lewagon.org", nickname: "Ilona", password: "123456")
User.create(email: "alexis@lewagon.org", nickname: "Alexis", password: "123456")
User.create(email: "patrik@lewagon.org", nickname: "Patrik", password: "123456")
User.create(email: "ryan@lewagon.org", nickname: "Ryan", password: "123456")
User.create(email: "toni@lewagon.org", nickname: "Toni", password: "123456")
User.create(email: "wiebke@lewagon.org", nickname: "Wiebke", password: "123456")
User.create(email: "jadwiga@lewagon.org", nickname: "Jadwiga", password: "123456")
User.create(email: "assunta@lewagon.org", nickname: "Assunta", password: "123456")
User.create(email: "iva@lewagon.org", nickname: "Iva", password: "123456")

puts 'done :)'
