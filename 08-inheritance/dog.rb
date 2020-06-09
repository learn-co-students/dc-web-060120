class Dog < Animal

    attr_reader :species, :breed

    def initialize(name, breed)
        @species = "Canine"
        @breed = breed
        super(name)
    end

    # attr_writer :name
    # def name=(new_name)
    #     @name = new_name
    # end
end