# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
List.destroy_all
Tip.destroy_all
ListTip.destroy_all


User.create(email: "andres@hotmail.com", password: "123456")
List.create(name: "Resto", user_id: 1)
Tip.create(title: "Can Ros", user_id: 1, rating: 5, category: "restaurants", address: "Bailen 152, Barcelona")
ListTip.create(list_id: 1, tip_id: 1)
