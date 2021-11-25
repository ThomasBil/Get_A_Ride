# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Car.destroy_all if Rails.env.development?
puts "all cars destroy"
User.destroy_all if Rails.env.development?
puts "all users destroy"
Booking.destroy_all if Rails.env.development?
puts "all Bookings destroy"



nassim = User.create!(name: "Nassim", email: "nassim@lewagon.fr", phone_number: "0678787878", address: "8 rue de Dunkerque", password: "azerty")
nabila = User.create!(name: "Nabila", email: "nabila@lewagon.fr", phone_number: "0678787878", address: "8 rue de Dunkerque", password: "azerty")
thomas = User.create!(name: "Thomas", email: "thomas@lewagon.fr", phone_number: "0678787878", address: "8 rue de Dunkerque", password: "azerty")

puts "#{User.count} users created"
