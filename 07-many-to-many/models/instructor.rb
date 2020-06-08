class Instructor

    attr_accessor :name, :school

    @@all = []

    def initialize(name, school)
        @name = name
        @school = school
        @@all << self
    end

    def self.all 
        @@all 
    end

    def students
        # return array of all student objects this teacher teaches
    end



end