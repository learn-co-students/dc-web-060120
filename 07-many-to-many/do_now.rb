# Build out these classes and methods so that a restaurant can track the meals it serves, 
# and a Meal knows all the restaurants where it is served.  e.g., if McDonalds and Burger King
# both serve hamburgers and chicken sandwiches, `mcdonalds.meals` would include both hamburgers
# and chicken sandwiches, and `hamburger.restaurants` would include both McDonalds and Burger King

class Restaurant

    def initialize(name)
        @name = name
        @meals = []
    end

    def add_meal(meal)
        @meals << meal
        meal.restaurants << self
    end

    def name
        @name
    end

    def meals
        @meals
    end

end

class Meal

    attr_reader :name, :restaurants

    def initialize(name)
        @name = name
        @restaurants = []

    end

    def add_restaurant(restaurant)
        @restaurants << restaurant
        restaurant.meals << self
    end

end

# mcdonalds.meals 
# hamburger.restaurants

mcd = Restaurant.new("McDonalds")
burger = Meal.new("Hamburger")
bk = Restaurant.new("Burger King")
chik = Meal.new("Chicken Sandwich")

puts mcd.name == "McDonalds"
puts burger.name == "Hamburger"

puts mcd.meals == []
puts burger.restaurants == []

mcd.add_meal(burger)
puts mcd.meals.include?(burger)

chik.add_restaurant(bk)
puts chik.restaurants.include?(bk)

puts burger.restaurants.include?(mcd)

