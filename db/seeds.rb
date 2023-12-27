# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(username: "Evgeny", email: "evgeny@a.a", password: "password")
User.create(username: "Arya", email: "arya@a.a", password: "password")
User.create(username: "Frodo", email: "frodo@a.a", password: "password")
User.create(username: "Gandalf", email: "gandlaf@a.a", password: "password")
Message.create(body: "Test message", user: User.find(10))
Message.create(body: "Test message2", user: User.find(11))
Message.create(body: "Test message3", user: User.find(11))
