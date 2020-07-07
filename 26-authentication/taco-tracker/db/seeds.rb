# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Taco.destroy_all
Restaurant.destroy_all

def random_boolean
    return rand(0..1.0) > 0.5
end

20.times {Taco.create(
    name: "#{Faker::Hipster.word} Taco",
    price: rand(1.0...10.0).round(2),
    vegetarian: random_boolean)}

3.times {Restaurant.create(
    name: Faker::Restaurant.name,
    city: Faker::Address.city_prefix + Faker::Address.city_suffix)}

taco_ids = Taco.pluck(:id) # got all taco ids
first_five_ids = taco_ids[0...5] # split into three groups mostly randomly
next_five_ids = taco_ids[5...10]
rest = taco_ids[10..-1]

Restaurant.first.taco_ids = first_five_ids # assigned a group of taco ids to each restaurant
Restaurant.second.taco_ids = next_five_ids
Restaurant.third.taco_ids = rest

20.times {Ingredient.create(name: Faker::Food.ingredient)}