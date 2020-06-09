require_relative "./swimmable.rb"

class Cat < Animal

    include Swimmable

    attr_reader :species

    def initialize(new_name)
        @species = "Feline" 
        super(new_name)
    end

    def breathe
        inhale = super()
        puts "Meow meow purr purr"
        puts inhale
        puts inhale
        puts inhale
        return "likes to breathe"
    end

end

