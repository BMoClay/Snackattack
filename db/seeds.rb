# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Snack.destroy_all
Favorite.destroy_all

User.create(name: "Ben Morgan-Cleveland", age: 37, lifestyle: "active")
User.create(name: "Luis Torres", age: 27, lifestyle: "active")

Snack.create(name: "KitKat", img: "images/kitkat.jpg")
Snack.create(name: "Corndog", img: "/images/corndog.jpg")
Snack.create(name: "Hard Boiled Eggs", img: "/images/hard_boiled_eggs.jpg")
Snack.create(name: "Nachos", img: "/images/nachos.webp")
Snack.create(name: "Phish Food", img: "/images/phish_food.jpg")
Snack.create(name: "Pistachios", img: "/images/pistachios.webp")
Snack.create(name: "Plantain Chips", img: "/images/plantain_chips.webp")
Snack.create(name: "Red Pear", img: "/images/red_pear.jpg")
Snack.create(name: "Turtle Chips", img: "/images/turtle_chips.jpg")

Favorite.create(user_id: 1, snack_id: 1)
Favorite.create(user_id: 1, snack_id: 5)
Favorite.create(user_id: 2, snack_id: 1)
Favorite.create(user_id: 2, snack_id: 6)

