# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all
User.destroy_all

restaurants = [
  {name: "Graham's", address: "4 Street st", neighborhood: "Grahamville", price_range: "$$$$$", menu: "Graham's Crackers", time_slot: 12-11}
]

restaurants.each do |restaurant|
  Restaurant.create(restaurant)
end

users = [
  {email: "fake@fake.com", password: "fake"}
]

users.each do |user|
  User.create(user)
end

# reservations = [
#   {}
# ]
