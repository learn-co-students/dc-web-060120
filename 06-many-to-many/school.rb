class School

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    # def add_instructor(instr)
    #     if instr.is_a?(Instructor)
    #         self.instructors << instr
    #     else
    #         puts "#{instr} is not an Instructor it is a #{instr.class}"
    #     end
    # end

    def instructors
        # look through all the instructors
        Instructor.all.select do |instructor|
        # choose the instructors whose school is this school
            instructor.school == self 
        end
    end

    def instructor_names
        self.instructors.map do |instr| 
            instr.name
        end
    end

end




