class Ingredient

    attr_reader :name, :calorie_count

    @@all = []

    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        dessert_ingredients = DessertIngredient.all.select do |di| 
            di.ingredient == self
        end
        # DessertIngredient.all.select{|di| di.ingredient == self}
        dessert_ingredients.map do |di| 
            di.dessert
        end
        # dessert_ingredients.map{|di| di.dessert}
    end

    def bakeries
       ingredient_bakery = []
        self.desserts.each do |dessert|
            if !ingredient_bakery.include?(dessert.bakery)
                ingredient_bakery << dessert.bakery
            end
        end
        ingredient_bakery
    end

    def self.find_by_name(ingredient)
        Ingredient.all.select do |ing|
            ing.name.downcase.include?(ingredient.downcase)
        end
    end

end