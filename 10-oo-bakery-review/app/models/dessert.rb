class Dessert

    attr_reader :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        dessert_ingredients =  DessertIngredient.all.select do |di|
            di.dessert == self
        end
        dessert_ingredients.map{|di| di.ingredient}
    end

    def calories
        dessert_ingredients_calories = self.ingredients.map do |ing|
            # given a dessert, return array of all calories
            ing.calorie_count
        end
        dessert_ingredients_calories.sum
    end

end