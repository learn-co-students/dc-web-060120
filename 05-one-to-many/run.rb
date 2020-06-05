require "pry"
require_relative "./school.rb"
require_relative "./instructor.rb"


flatiron = School.new('Flatiron')
rutgers = School.new("Rutgers")

paul = Instructor.new("Paul Nichols", flatiron)
ann = Instructor.new("Ann Duong", flatiron)

smith = Instructor.new("Prof. Smith", rutgers)
jones = Instructor.new("Prof. Jones", rutgers)

# flatiron.add_instructor(paul)
# flatiron.add_instructor(ann)
# flatiron.add_instructor("hello")
# print flatiron.instructors
puts "\n\n"
paul.name = "Paul Nicholsen"

# print flatiron.instructors

# puts paul.school.name

print flatiron.instructor_names