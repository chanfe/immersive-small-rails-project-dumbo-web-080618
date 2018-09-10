# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
basic = ThemeSet.create(name: "Standard", category: "Basic")
theme1 = ThemeSet.create(name: "Fire and Ice", category: "Red and White")
theme2 = ThemeSet.create(name: "Pyre Mountain", category: "Volcanic Ash")

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

cat_card = Card.create(name:"fire cat", description:"Its a flaming cat", mana_cost:1, theme_set_id: theme1.id)
mana_card = Card.create(name:"mana crystal", description:"Gives you mana", mana_cost:0, theme_set_id: basic.id)
basic_card = Card.create(name:"stick", description:"It is a stick... What do you want?", mana_cost:0, theme_set_id: basic.id)
