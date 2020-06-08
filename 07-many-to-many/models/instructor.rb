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
        # match = InstructorStudent.all.select do |join_record|
        #     # iterate through join table and find
        #     # teacher equal to current instance
        #     join_record.teacher == self 
        # end
        # # then take the students from the matching records
        # match.map {|record| record.student}

        matching_students = []
        InstructorStudent.all.each do |join_record|
            if join_record.teacher == self 
                matching_students << join_record.student
            end
        end
        return matching_students
    end

    def add_student(student)
        InstructorStudent.new(student, self)
    end





end