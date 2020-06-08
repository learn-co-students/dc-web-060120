class InstructorStudent

    attr_reader :student, :teacher

    @@all = []

    def initialize(student, teacher)
        @student, @teacher = student, teacher
        @@all << self
    end

    def self.all 
        @@all 
    end


end