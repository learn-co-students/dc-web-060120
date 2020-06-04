require 'pry'
# ella = {name: "Ella", color: "black", floofiness: 10}

class Cat

    attr_reader :number_of_legs # getter
    attr_writer :floofiness # setter
    attr_accessor :name, :color # both

    @@all_cats = []
    @@species = "feline"
    @@cats_by_color = {}


    def initialize(name, color, floofiness, number_of_legs=4)
        # gets called every time you write .new
        @number_of_legs = number_of_legs
        @name = name 
        @color = color 
        @floofiness = floofiness
        @@all_cats << self
        @@cats_by_color[self.color] = self
    end

    def self.species 
    # 'self' refers to the Cat class when in a method name
        @@species
    end

    def species
        Cat.species
    end

    def self.cats_by_color
        @@cats_by_color
    end

    def self.cat_colors_longer_than_five
        # returns unique array of colors
        all_colors = Cat.all_cats.map do |kitty|
            kitty.color 
        end.select {|color| color.length > 5}

    end

    def self.all_cats
        return @@all_cats 
    end

    def self.cat_names
        # ["Ella", "Petey", "Lexi"]

        # get all the cats
        all_names = Cat.all_cats.map do |kitty|
            # put the name of each kitty in a new array
            kitty.name
        end
        return all_names

    end

    def introduce 
        # returns string stating cat's name
        puts """My name is #{self.name}. I am a #{self.color} cat. 
            #{self.floofiness}"""
    end

    def meow
        return "Meow Meow I am a kitty"
    end

    def floofiness # custom getter
        if @floofiness > 6
            return "I am a very floofy kitty"
        else
            return "I am not so floofy, but still better than a dog."
        end
    end
    # def number_of_legs
    #     return @number_of_legs
    # end

    # def name #getter
    #     return @name
    # end

    # def name=(name) #setter
    #     @name = name # @name is an instance variable
    #     # return @name
    # end

    #     # VV name of the method
    # def color=(color)
    #             # ^^VV argument
    #     @color = color
    #     # ^^ instance variable
    # end

    # def color
    #     return @color
    # end


    # def floofiness=(new_floofiness)
    #     @floofiness = new_floofiness
    # end

end


ella = Cat.new("Ella", "black", 10) # creates an instance (object) of the class Cat
petey = Cat.new("Petey", "black", 5)
lexi = Cat.new("Lexi", "orange", 6)
# ella.name = "Ella"
# ella.color = "black"
# ella.floofiness = 10
# puts ella.species = "canine"
# puts ella.floofiness
# puts ella.name.upcase

# puts ella.name
binding.pry



# pete = Cat.new

# puts ella.meow

# puts pete.meow

# class Integer

# x = Integer.new(3) #pseudocode

# puts x
