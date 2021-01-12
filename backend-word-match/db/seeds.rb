# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gameboard.destroy_all
Card.destroy_all
Game.destroy_all


Card.create(match: "citizen")
Card.create(match: "citizen")
Card.create(match: "America")
Card.create(match: "America")
Card.create(match: "freedom")
Card.create(match: "freedom")

Gameboard.create

Game.create(gameboard_id: 1, card_id: 1)
Game.create(gameboard_id: 1, card_id: 2)
Game.create(gameboard_id: 1, card_id: 3)
Game.create(gameboard_id: 1, card_id: 4)
Game.create(gameboard_id: 1, card_id: 5)
Game.create(gameboard_id: 1, card_id: 6)



