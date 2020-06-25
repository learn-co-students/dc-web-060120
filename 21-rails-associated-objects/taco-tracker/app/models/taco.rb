class Taco < ApplicationRecord

    belongs_to :restaurant, optional: true

    def display_name
        return self.name.titlecase
    end

    def self.is_vegetarian?(bool_veg)
        # Taco.all.select do |taco|
        #     taco.vegetarian? == bool_veg
        # end
        Taco.where(vegetarian: bool_veg)
    end
end
