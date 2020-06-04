# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all

PersonalityType.destroy_all

Category.destroy_all

personality = PersonalityType.create!(name: "Valente", description: "As valentes vivem num mundo colorido e sensual, inspirado através das conexões com pessoas e ideias. As personalidades Valentes têm alegria em reinterpretar essas conexões, reinventando e experimentando com si próprias e novas perspectivas. Nenhum outro tipo de personalidade explora e experimenta dessa maneira. Isso cria uma sensação de espontaneidade, fazendo os Aventureiros parecerem imprevisíveis, mesmo com seus amigos e entes queridos.")


category = Category.create!([
  { name: 'Bullets' },
  { name: 'Rabbits' },
  { name: 'Clits' },
  { name: 'Finger Vibrators' },
  { name: 'Plug Anal' },
  { name: 'Velas' },
  { name: 'Lubrificantes' }]
)

product = Product.create!([
        {name: "Vibrador Bullet Power",
        price: 118.5,
        description: "O Power Bullet é um vibrador discreto e pequeno, ideal para estimulação clitoriana! Super potente, e feito em silicone, este BB é recarregável e à prova d'água ! Perfeito para usar sozinha ou encaixada",
        amount: 1, category: category[0],
        photo: "https://cdn.shopify.com/s/files/1/2110/6921/products/BULLET_POWER_RECARREGAVEL_1_1024x1024.jpg?v=1575588872",
        personality_type: personality},

                {name: "Vibrador Massageador",
        price: 178.5,
        description: "VERSÁTIL é a palavra chave para você escolher um sex toy? Então o Vibrador Massageador Bullet BUD é uma ótima opção para você. Este super potente bullet recarregável, pode ser utilizado de varias funções",
        amount: 1, category: category[0],
        photo: "https://cdn.shopify.com/s/files/1/2110/6921/products/Vibrador_Bud_1_1024x1024.jpg?v=1580317405",
        personality_type: personality},

                {name: "Vibrador Dolphin G-Spot",
        price: 50.0,
        description: "O Power Bullet é um vibrador discreto e pequeno, ideal para estimulação clitoriana! Super potente, e feito em silicone, este BB é recarregável e à prova d'água ! Perfeito para usar sozinha ou encaixada",
        amount: 1, category: category[0],
        photo: "https://cdn.shopify.com/s/files/1/2110/6921/products/Vibrador_Multivelocidade_Dolphin_3_1024x1024.jpg?v=1555738774",
        personality_type: personality},

                {name: "Vibrador Rabbit Canrol",
        price: 322.6,
        description: "Em busca de um vibrador Rabbit que dê uma atenção extra ao seu clitóris? O Vibrador Canrol é o que você busca. Com design diferenciado ele possui um massageador com textura granulada, com uma área",
        amount: 1, category: category[2],
        photo: "https://cdn.shopify.com/s/files/1/2110/6921/products/vibrador_carnon_rosa_3_1_1024x1024.jpg?v=1580668034",
        personality_type: personality},

                {name: "Vibrador Mini Rabbit Pretty Love",
        price: 118.5,
        description: " Compacto para quem vê, gigante para quem usa! Essa é a melhor definição para o Mini Rabbit Pretty Love. A gente sempre fala que os rabbits são os vibradores favoritos das manas, e não é atoa. Estim... ",
        amount: 1, category: category[2],
        photo: "https://cdn.shopify.com/s/files/1/2110/6921/products/Vibrador_Caesar_1_1024x1024.jpg?v=1529710977",
        personality_type: personality},

                {name: "Vibrador Personal Multivelocidade",
        price: 118.5,
        description: " Quer um vibrador básico, que alinhe forma e função? O Vibrador Personal Multivelocidade é perfeito para você! Um vibrador de forma limpa e clássica, com controle de velocidade manual, 13 cms de pur... ",
        amount: 1, category: category[2],
        photo: "https://cdn.shopify.com/s/files/1/2110/6921/products/vibrador_personal_rosa_2_1024x1024.jpg?v=1542361042",
        personality_type: personality},

                {name: "Vibrador Rabbit Freda",
        price: 188.5,
        description: " O Vibrador Rabbit Freda é um clássico que toda mana deveria ter! Os rabbits são os melhores amigos da ppk, porque contam com dois motores: um para estimular o canal vaginal e outro para estimular o... ",
        amount: 1, category: category[2],
        photo: "https://cdn.shopify.com/s/files/1/2110/6921/products/VIBRADORRABBITFREDA3_1024x1024.jpg?v=1589678896",
        personality_type: personality}
        ])
