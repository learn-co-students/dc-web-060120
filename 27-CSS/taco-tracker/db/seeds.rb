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

def titleize(string)
    string[0].upcase+string[1..-1]
end


3.times {Restaurant.create(
    name: Faker::Restaurant.name,
    city: Faker::Address.city_prefix + Faker::Address.city_suffix)}
    
20.times {Taco.create!(
    name: "#{Faker::Hipster.word.titleize} Taco",
    price: rand(1.0...10.0).round(2),
    vegetarian: random_boolean,
    restaurant_id: Restaurant.all.sample.id)}

20.times {Ingredient.create(name: Faker::Food.ingredient)}