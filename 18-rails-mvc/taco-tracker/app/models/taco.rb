class Taco < ApplicationRecord

    def display_name
        return self.name.titlecase
    end
end
