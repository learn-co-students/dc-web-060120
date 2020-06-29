class Planet < ApplicationRecord
    has_many :missions
    has_many :scientists, through: :missions

    def planet_plus_cheese
        self.name + " cheese"
    end
end


