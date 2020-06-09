require_relative "./swimmable.rb"

class Fish < Animal

    include Swimmable::InstanceMethods# instance methods
    extend Swimmable::ClassMethods # class methods

    def initialize(name)
        @species = "fishie"
        super(name)
    end

    def swimming
        puts "I am a fish #{self.take_a_dip}"
    end



end