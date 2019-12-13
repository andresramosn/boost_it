# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning DB"

User.destroy_all
List.destroy_all
Tip.destroy_all
ListTip.destroy_all


user_1 = User.create(email: "andres@hotmail.com", password: "123456")
# user_2 = User.create(email: "imediabar@hotmail.com", password: "123456")

list_restos = List.create(name: "BCN Foodies", user_id: 1)

resto_1 = Tip.create(title: "Restaurante Igueldo", user_id: 1, rating: 5, category: "Restaurant", address: "Bailen 152, Barcelona", photo: "http://www.restauranteigueldo.com/wp-content/uploads/foto1.png", review: "You really have to try this place. On of my favourites in Barcelona by far. You won't get better value than in Igueldo for that price. Try the Txuletón ;)")
resto_2 = Tip.create(title: "Spai Kru", user_id: 1, rating: 5, category: "Restaurant", address: "Manigua 5, Barcelona", photo: "https://www.bcnrestaurantes.com/img-trans/productos/21648/fotos/556-fot-espai-kru-10.jpeg", review: "If you are one of those gourmets that doesn't care to go a little bit up in the price, this place is your call. The quality of the product you'll find in Spai Kru is something you won't easily find any other place in town.")

list_tip_1 = ListTip.create(list_id: 1, tip_id: 1, tip_id: 2)


list_parks = List.create(name: "Best parks in BCN", user_id: 1)

park_1 = Tip.create(title: "Parc de la Ciutadella", user_id: 1, rating: 5, category: "Park", address: "Passeig de Picasso, 21, 08003 Barcelona",  photo: "https://upload.wikimedia.org/wikipedia/commons/4/4c/Vista_a%C3%A8ria_Ciutadella_1960.jpg", review: "The Parc de la Ciutadella is a park on the northeastern edge of Ciutat Vella, Barcelona, Catalonia, Spain. For decades following its creation in the mid-19th century, this park was the city's only green space.")
park_2 = Tip.create(title: "Parc de Montjuïc", user_id: 1, rating: 5, category: "Park", address: "Palau Nacional, Parc de Montjuïc, s/n, 08038 Barcelona",   photo: "https://es.wikipedia.org/wiki/Montjuic_(Barcelona)#/media/Archivo:14-08-05-barcelona-RalfR-041.jpg", review: "Montjuïc translates to Jewish Mountain from medieval Latin and Catalan, and remains of a medieval Jewish cemetery have been found there.[1][2] Some sources suggest that Montjuïc is related to the Latin phrase Mons Jovicus ('hill of Jove').")

list_tip_2 = ListTip.create(list_id: 2, tip_id: 3, tip_id: 4)

puts "#{User.count} users created & #{Tip.count} tips & #{ListTip.count} list_tips created"

# List.create(name: "resto", user_id: 8); List.create(name: "bars", user_id: 8); List.create(name: "culture", user_id: 8)
# Tip.create(title: "Can Ros", user_id: 8); Tip.create(title: "Blah bla", user_id: 8); Tip.create(title: "Hello", user_id: 8)
# ListTip.create(list_id: 2, tip_id: 2); ListTip.create(list_id: 3, tip_id: 3); ListTip.create(list_id: 4, tip_id: 4);




# counter = 0

# 9.times do |_x|
#   random_email = ("a".."z").to_a.sample(10).join + "@gmail.com"
#   random_password = (1..99).to_a.sample(8).join
#   #create users
#   user = User.create(email: random_email, password: random_password)
#   #create cars
#   random_price = (1..9).to_a.sample(2).join.to_i
#   car = Car.new(
#     price: random_price,
#     model: model[counter],
#     brand: brand[counter],
#     address: address[counter],
#     description: description[counter],
#     user_id: user.id)
#   car.remote_photo_url = photo[counter]
#   car.save!
#   counter += 1
# end





