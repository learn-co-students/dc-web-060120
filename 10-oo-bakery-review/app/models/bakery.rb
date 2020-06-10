class Bakery

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select{|dessert| dessert.bakery == self}
    end

    def ingredients
        bakery_ingredients = []
        self.desserts.each do |dessert|
            # for each dessert we want to get all ingredients
            dessert.ingredients.each do |ingredient|
            # if bakery_ingredients includes this ingredient do nothing
            # if bakery_ingredients does not include this ingredient, push it into bakery_ingredients
                if !bakery_ingredients.include?(ingredient)
                    bakery_ingredients << ingredient
                end
            end
        end
        bakery_ingredients

        # bakery_ingredients = self.desserts.map do |dessert|
        #     dessert.ingredients
        # end

        # bakery_ingredients.flatten!.uniq!
    end

    def average_calories
        all_calories = self.desserts.map do |dessert|
            dessert.calories
        end
        # find average of all_calories
            all_calories.sum.to_float/all_calories.length
    end

    def shopping_list
        all_ingredients = self.ingredients.map{|ing| ing.name}
        "Shopping List: #{all_ingredients.join(', ')}."
    end

end