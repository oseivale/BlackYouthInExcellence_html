# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Reservation.destroy_all
Restaurant.destroy_all
User.destroy_all

restaurants = [
  {name: "Graham's", address: "4 Street st", neighborhood: "Grahamville", price_range: "$$$$$", menu: "Graham's Crackers", open: 6, close: 20}
]

restaurants.each do |restaurant|
  Restaurant.create(restaurant)
end

users = [
  {email: "fake@fake.com", password: "fake", password_confirmation: "fake"}
]

users.each do |user|
  User.create(user)
end

# reservations = [
#   {}
# ]
