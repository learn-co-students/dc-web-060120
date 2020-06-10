require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bakery1 = Bakery.new("Maddie's Mince Pies")
bakery2 = Bakery.new("oops! all croissants!")

3.times do
  Dessert.new(Faker::Dessert.variety, Bakery.all.sample)
end

chocolate = Ingredient.new("chocolate", 80)
peaches = Ingredient.new("peach", 45)
water = Ingredient.new("water", 0)
sugar = Ingredient.new("sugar", 100)
flour = Ingredient.new("flour", 20)
salt = Ingredient.new("salt", 8)
eggs = Ingredient.new("egg", 33)
chocolate_chips = Ingredient.new("chocolate chips", 42)
powdered_sugar = Ingredient.new("powedered sugar", 74)
milk = Ingredient.new("milk", 29)

DessertIngredient.new(Dessert.all.first, chocolate )
DessertIngredient.new(Dessert.all.first, eggs)
DessertIngredient.new(Dessert.all.first, milk)
DessertIngredient.new(Dessert.all.first, salt)
DessertIngredient.new(Dessert.all.first, water)
DessertIngredient.new(Dessert.all[1], water)
DessertIngredient.new(Dessert.all[1], flour)
DessertIngredient.new(Dessert.all[1], milk)
DessertIngredient.new(Dessert.all.last, milk)
DessertIngredient.new(Dessert.all.last, peaches)
DessertIngredient.new(Dessert.all.last, flour)


binding.pry
0
