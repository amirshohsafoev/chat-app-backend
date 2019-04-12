# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Message.destroy_all
# Chatroom.destroy_all
User.create(username: "Sherzod", password: "1234")
User.create(username: "Otabek", password: "1234")
Chatroom.create(topic: "coding")
Chatroom.create(topic: "drinking")
Message.create(user_id: 1, chatroom_id: 1, message: "Hello world!")
Message.create(user_id: 1, chatroom_id: 2, message: "Hello world 222!")
Message.create(user_id: 1, chatroom_id: 1, message: "Hello world 333!")

Message.create(user_id: 2, chatroom_id: 1, message: "Hello back to world!")
Message.create(user_id: 2, chatroom_id: 2, message: "Hello back to world 222!")
Message.create(user_id: 2, chatroom_id: 1, message: "Hello back to world 333!")
