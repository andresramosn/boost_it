# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database'
Tip.destroy_all

puts 'Creating tips'

user = User.create(email: "imediabar@gmail.com", password: "123456")

tip = Tip.new(rating: 5, review: "Amazing place you really need to try", category: "Food", title: "Restaurante Igueldo", address: "Avenida Santiago", user_id: 1)
tip.save!

puts "#{Tip.count} tip created"

