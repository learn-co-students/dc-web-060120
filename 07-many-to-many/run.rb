require "pry"
require_relative "./models/school.rb"
require_relative "./models/instructor.rb"
require_relative "./models/student.rb"
require_relative "./models/instructor_student.rb"


flatiron = School.new('Flatiron')
rutgers = School.new("Rutgers")

paul = Instructor.new("Paul Nichols", flatiron)
ann = Instructor.new("Ann Duong", flatiron)

smith = Instructor.new("Prof. Smith", rutgers)
jones = Instructor.new("Prof. Jones", rutgers)

pat = Student.new("Pat")
jerry = Student.new("Jerry")
kelly = Student.new("Kelly")
# flatiron.add_instructor(paul)
# flatiron.add_instructor(ann)
# flatiron.add_instructor("hello")
# print flatiron.instructors
puts "\n\n"
paul.name = "Paul Nicholsen"

# print flatiron.instructors

# puts paul.school.name

puts "Student knows their name"
puts pat.name == "Pat"
puts jerry.name == "Jerry"

join_record1 = InstructorStudent.new(pat, paul)
join_record2 = InstructorStudent.new(jerry, paul)
join_record3 = InstructorStudent.new(pat, ann)
join_record4 = InstructorStudent.new(pat, smith)

puts "Join Record knows its student and its teacher"
puts join_record1.teacher == paul
puts join_record1.student == pat

puts "Student knows their teachers"
puts pat.teachers.include?(paul)

puts "InstructorStudent can retrieve all its record"
puts InstructorStudent.all.include?(join_record1)

puts "Student knows their teachers' names"
puts pat.teacher_names.include?("Paul Nicholsen")
puts jerry.teacher_names.include?("Paul Nicholsen")
puts !jerry.teacher_names.include?("Ann Duong")

puts "Teacher knows their students"
puts paul.students.include?(pat)

puts "Student can add a teacher"
puts !jerry.teachers.include?(ann)
jerry.add_instructor(ann)
puts jerry.teachers.include?(ann)




