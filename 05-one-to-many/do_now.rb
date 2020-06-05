# A puppy is initialized with a cuteness score of 5.  A puppy can raise
# its cuteness score by 3 points if it gets groomed, and lower its score
# by 5 points playing in the mud.  

# The following code works, but there are some problems.  Refactor this code 
# to improve it.  (The code can be downloaded from your learn.co page under
# lecture 04)

class Puppy

    attr_reader :name, :cuteness
    # BEST PRACTICE:  Do not use @variable anywhere except in your getter and setter methods
    # every other method should call on getters and setters instead of accessing the 
    # instance variable directly

    def initialize(name)
        @name = name
        @cuteness = 5
    end

    def play_in_the_mud
        self.cuteness=(self.cuteness - 5)
        return "Doggies love to get muddy"
    end

    def take_a_bath
        self.cuteness = self.cuteness + 3 
    end

    def cuteness=(new_cuteness)
        @cuteness = new_cuteness.clamp(1, 10)

    end    
end

fido = Puppy.new("Fido")
puts fido.cuteness == 5 # test initial cuteness
fido.take_a_bath
puts fido.cuteness == 8 # test that take a bath raises cuteness by 3
fido.take_a_bath
puts fido.cuteness == 10 # test that cuteness cannot exceed 10

puts fido.play_in_the_mud
puts fido.cuteness