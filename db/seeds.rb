# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeds destroyed "
Booking.destroy_all
Room.destroy_all
User.destroy_all

user1 = User.create(email: "user1@gmail.com", password: 'password')
puts "user created"
puts "-------------------------------------------------------"

description1 = "La tête sous les étoiles, vous serez bercé par les bruits de la nature. Avec un brin d'air frais et pur votre nuit sera revigorante..."
room1 = Room.create(category: "Nuit insolite", description: description1, size: 1, price: 110, image_url: 'https://res.cloudinary.com/dlumucj7m/image/upload/v1671556492/room_pleinair_wfk7jx.jpg')


description2 = "Chambre de charme au allure tropicale, vous vous reveillerez avec une impression de voyage..."
room2 = Room.create(category: "Nuit tropicale", description: description2, size: 1, price: 90, image_url: 'https://res.cloudinary.com/dlumucj7m/image/upload/v1671556872/tropical_od49q2.jpg')


description3 = "Cette magnifique chambre, au couleur moderne et courbe design, ne vous laissera pas indifférent..."
room3= Room.create(category: "Nuit Reposante", description: description3, size: 1, price: 80, image_url: 'https://res.cloudinary.com/dlumucj7m/image/upload/v1671557044/design_zutkqg.jpg')

puts "-------------------------------------------------------"

puts "all rooms created"

puts "-------------------------------------------------------"

booking1 = Booking.create(start_date: "21/02/2023", end_date: "03/03/2023", user: user1, room: room1)
booking2 = Booking.create(start_date: "21/01/2023", end_date: "03/02/2023", user: user1, room: room2)

puts "create bookings"
