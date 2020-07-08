class Taco < ApplicationRecord

    belongs_to :restaurant

    has_many :taco_ingredients
    has_many :ingredients, through: :taco_ingredients

    # validates :name, presence: true, uniqueness: {case_sensitive: false}
    # validates :price, presence: true, numericality: {greater_than: 0, less_than_or_equal_to: 20}
    # validates_uniqueness_of :name,
    #     :message => Proc.new { |taco, data|
    #         "#{taco.name} has already been taken"
    #     }
    validates :vegetarian, inclusion: [true, false]
    
    def display_name
        return self.name.titlecase
    end

    def self.is_vegetarian?(bool_veg)
        # Taco.all.select do |taco|
        #     taco.vegetarian? == bool_veg
        # end
        Taco.where(vegetarian: bool_veg)
    end

    def veg_color
        self.vegetarian ? "title veggie" : "title not_veggie"
    end
end
