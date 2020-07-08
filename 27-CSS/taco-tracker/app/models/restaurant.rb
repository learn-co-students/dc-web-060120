class Restaurant < ApplicationRecord
    has_many :tacos

    def display_name_and_city
        return "#{self.name} - #{self.city}"
    end
end
