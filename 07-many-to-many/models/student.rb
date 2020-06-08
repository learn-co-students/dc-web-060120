class Student

    attr_accessor :name 
    
    def initialize(name)
        @name = name
    end

    def teachers
        # look through all InstructorStudent records
        matching_records = InstructorStudent.all.select do |join_record|
        # find the ones that have a student of whoever 
        # I'm looking for
            join_record.student == self
        end

        # put the teachers from those rows in a new array
        matching_records.collect do |record|
            record.teacher
        end
    end

    def teacher_names
        self.teachers.map do |teacher|
            teacher.name
        end
    end

end

