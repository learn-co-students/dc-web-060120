class Animal 

    # attr_reader :name 

    def initialize(name)
        @name = name
    end

    def breathe
        "Inhale, exhale"
    end

    def is_alive?
        return true
    end

    def name
        "My name is #{@name}"
    end


end