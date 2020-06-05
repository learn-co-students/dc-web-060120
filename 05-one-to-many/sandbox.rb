class Car

    NUM_WHEELS = 4
    ALL_CARS = ["test"]

    def initialize(make, model)
        @make, @model = make, model
    end

    # def self.NUM_WHEELS=(new_number)
    #     NUM_WHEELS = new_number
    # end

    def self.clear_cars
        ALL_CARS.clear
    end

    def self.all_cars 
        ALL_CARS[0] = "something"
    end



end

puts Car.all_cars
Car.clear_cars
puts Car.all_cars