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


nassim = User.create!(name: "Nassim", email: "nassim@lewagon.fr", phone_number: "0678787878", address: "8 rue de Dunkerque", password: "azerty")
nabila = User.create!(name: "Nabila", email: "nabila@lewagon.fr", phone_number: "0678787878", address: "8 rue de Dunkerque", password: "azerty")
thomas = User.create!(name: "Thomas", email: "thomas@lewagon.fr", phone_number: "0678787878", address: "8 rue de Dunkerque", password: "azerty")

puts "#{User.count} users created"

car_1 = Car.new(brand: "Audi", price_per_day: 100, localisation: "Lille", immatriculation: "129EM76", details: "sportive car")
car_1.user = nassim
car_1.save!

car_2 = Car.new(brand: "BMW", price_per_day: 80, localisation: "Paris", immatriculation: "111EM11", details: "sportive car")
car_2.user = nabila
car_2.save!

car_3 = Car.new(brand: "Renaud", price_per_day: 50, localisation: "Lille", immatriculation: "546TG64", details: "family car")
car_3.user = thomas
car_3.save!

puts "#{Car.count} cars created"
