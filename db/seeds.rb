# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
