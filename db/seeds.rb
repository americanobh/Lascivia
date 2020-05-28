# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: "Bullets")
Category.create(name: "Rabbits")

PersonalityType.create(name: "Pervert", description: "Very Perv")

Product.create(name: "Anal Plug", price: 55.5, description: "Its very fun !", amount: 1, category_id: 2, personality_type_id: 1)
