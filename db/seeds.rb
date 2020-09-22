# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Chatroom.destroy_all
User.destroy_all

puts 'users + chatrooms destroyed'

Chatroom.create(name: "resources")
Chatroom.create(name: "product")
Chatroom.create(name: "javascript")
Chatroom.create(name: "jobs")
Chatroom.create(name: "ruby")
Chatroom.create(name: "freelancers")
Chatroom.create(name: "help")
Chatroom.create(name: "design")
Chatroom.create(name: "career")
Chatroom.create(name: "berlin")
Chatroom.create(name: "general")
Chatroom.create(name: "batch-386")


# users
1.times do
  new_user = User.new(email: "ilona@lewagon.org", nickname: "Ilona", password: "123456")
  puts "user not saved"
  image = URI.open("https://avatars2.githubusercontent.com/u/61380207?v=4")
  new_user.photo.attach(io: image, filename: "#{new_user.nickname}_1", content_type: 'image/png')
  new_user.save!
  puts "added user with photo!"
end


1.times do
  new_user = User.new(email: "alexis@lewagon.org", nickname: "Alexis", password: "123456")
  puts "user not saved"
  image = URI.open("https://avatars0.githubusercontent.com/u/61702366?v=4")
  new_user.photo.attach(io: image, filename: "#{new_user.nickname}_1", content_type: 'image/png')
  new_user.save!
  puts "added user with photo!"
end

1.times do
  new_user = User.new(email: "patrik@lewagon.org", nickname: "Patrik", password: "123456")
  puts "user not saved"
  image = URI.open("https://avatars2.githubusercontent.com/u/15158574?v=4")
  new_user.photo.attach(io: image, filename: "#{new_user.nickname}_1", content_type: 'image/png')
  new_user.save!
  puts "added user with photo!"
end



1.times do
  new_user = User.new(email: "ryan@lewagon.org", nickname: "Ryan", password: "123456")
  puts "user not saved"
  image = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1569342819/rppyppu4uealcfs4tmmv.jpg")
  new_user.photo.attach(io: image, filename: "#{new_user.nickname}_1", content_type: 'image/png')
  new_user.save!
  puts "added user with photo!"
end

1.times do
  new_user = User.new(email: "toni@lewagon.org", nickname: "Toni", password: "123456")
  puts "user not saved"
  image = URI.open("https://avatars0.githubusercontent.com/u/31135213?s=460&u=de30dd6d415efc34715c8a6d357e3aa97d8bb5f2&v=4")
  new_user.photo.attach(io: image, filename: "#{new_user.nickname}_1", content_type: 'image/png')
  new_user.save!
  puts "added user with photo!"
end

1.times do
  new_user = User.new(email: "wiebke@lewagon.org", nickname: "Wiebke", password: "123456")
  puts "user not saved"
  image = URI.open("https://avatars1.githubusercontent.com/u/36281529?v=4")
  new_user.photo.attach(io: image, filename: "#{new_user.nickname}_1", content_type: 'image/png')
  new_user.save!
  puts "added user with photo!"
end

1.times do
  new_user = User.new(email: "jadwiga@lewagon.org", nickname: "Jadwiga", password: "123456")
  puts "user not saved"
  image = URI.open("https://avatars0.githubusercontent.com/u/40387014?v=4")
  new_user.photo.attach(io: image, filename: "#{new_user.nickname}_1", content_type: 'image/png')
  new_user.save!
  puts "added user with photo!"
end

1.times do
  new_user = User.new(email: "assunta@lewagon.org", nickname: "Assunta", password: "123456")
  puts "user not saved"
  image = URI.open("https://avatars1.githubusercontent.com/u/48203273?v=4")
  new_user.photo.attach(io: image, filename: "#{new_user.nickname}_1", content_type: 'image/png')
  new_user.save!
  puts "added user with photo!"
end

1.times do
  new_user = User.new(email: "iva@lewagon.org", nickname: "Iva", password: "123456")
  puts "user not saved"
  image = URI.open("https://avatars1.githubusercontent.com/u/59931648?v=4")
  new_user.photo.attach(io: image, filename: "#{new_user.nickname}_1", content_type: 'image/png')
  new_user.save!
  puts "added user with photo!"
end

puts 'done :)'
