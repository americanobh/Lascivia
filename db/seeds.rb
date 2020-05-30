# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
  { name: 'Bullets' },
  { name: 'Rabbits' },
  { name: 'Clits' },
  { name: 'Finger Vibrators' },
  { name: 'Plug Anal' },
  { name: 'Velas' },
  { name: 'Lubrificantes' }]
)



PersonalityType.create(name: "Valente", description: "As valentes vivem num mundo colorido e sensual, inspirado através das conexões com pessoas e ideias. As personalidades Valentes têm alegria em reinterpretar essas conexões, reinventando e experimentando com si próprias e novas perspectivas. Nenhum outro tipo de personalidade explora e experimenta dessa maneira. Isso cria uma sensação de espontaneidade, fazendo os Aventureiros parecerem imprevisíveis, mesmo com seus amigos e entes queridos.")

Product.create(name: "Anal Plug", price: 55.5, description: "Its very fun !", amount: 1, category_id: 2, personality_type_id: 1)
