module Swimmable

    # def new

    # end

    # def initialize(name)

    # end

    module ClassMethods

        def can_swim?
            return true
        end

    end

    module InstanceMethods

        def take_a_dip
            return "blub blub blub"
        end

    end


end


# x = Swimmable.new