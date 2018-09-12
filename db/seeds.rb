# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create(first_name: "admin", last_name: "admin", username: "admin", password:"123", email:"admin@test.com")

basic = ThemeSet.create(name: "Standard", category: "Basic")
fire = ThemeSet.create(name: "Fire", category: "Volcano")
water = ThemeSet.create(name: "Water", category: "Sea")
earth = ThemeSet.create(name: "Earth", category: "Earth")

felix = User.create(first_name: "Felix", last_name: "Chan", username: "nexe", password:"123", email:"test@test.com")
kevin = User.create(first_name: "Kevin", last_name: "Steele", username: "kds", password:"123", email:"kevin@email.com")
helen = User.create(first_name: "Helen", last_name: "Troy", username: "kyo", password:"123", email:"sometest@email.com")
some_guy = User.create(first_name: "Some", last_name: "Guy", username: "someguy", password:"123", email:"someguy@email.com")

red_deck = Deck.create(name:"red deck", user_id: felix.id)
blue_deck = Deck.create(name:"blue deck",user_id: felix.id)
burn_deck = Deck.create(name:"burn baby burn",user_id: kevin.id)
female_deck = Deck.create(name:"Woman power", user_id:helen.id)
mana_deck = Deck.create(name:"mana deck",user_id: some_guy.id)
no_deck = Deck.create(name:"no deck",user_id: some_guy.id)

mana_card = Card.create(name:"mana crystal", description:"Gives you mana", mana_cost:0, theme_set_id: basic.id)
basic_card = Card.create(name:"stick", description:"It is a stick... What do you want?", mana_cost:1, theme_set_id: basic.id)
Card.create(name:"Welp", description:"A wee welp", mana_cost:5, att:1, def:1, theme_set_id: basic.id)
Card.create(name:"Boss", description:"What do you want Boss!", mana_cost:10, att:3, def:3 theme_set_id: basic.id)

Card.create(name:"Fireball", description:"It is a flaming ball of fire, duh.", mana_cost:10, att:6, theme_set_id: fire.id)
Card.create(name:"Fire cat", description:"Its a flaming cat!!", mana_cost:4, att:1, def:1, theme_set_id: fire.id)
Card.create(name:"Fire man", description:"He is burning to death, go help him!!", mana_cost:5, att:10, def:1 theme_set_id: fire.id)

Card.create(name:"Think", description:"You think and draw a card", mana_cost:5, theme_set_id: water.id)
Card.create(name:"Ghoti", description:"It is a fish", mana_cost:7, att:2, def:2, theme_set_id: water.id)
Card.create(name:"Ice thing", description:"It is a thing of ice", mana_cost:10, att:2, def:4 theme_set_id: water.id)

Card.create(name:"extra crystal", description:"Gives you more mana", mana_cost:0, theme_set_id: earth.id)
Card.create(name:"Defence Turtle", description:"A turtle with more defence.", mana_cost:5, att:0, def:6, theme_set_id: earth.id)
Card.create(name:"Rock hard", description:"It is a rock that is hard.", mana_cost:10, att:1, def:10 theme_set_id: earth.id)
