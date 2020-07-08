Questions:

- array in strong_params and in general
- form_for vs form_tag, practice
- collection_select helpers (or checkbox)
- drawing out schema diagram and setting relationships
- handling validation errors and displaying to users
- setting uniqueness per scope (advanced)
- update/edit 


Student
Course
Enrollment

A Student can take many Courses.  A Course will have many students.  An Enrollment links a single Student to a Single Course

 
Student -< Enrollment >- Course
  |                         |
  ---------------------------
  

Student
:name
:grade(int)

Course
:title
:level(int)

Enrollment
:student_id
:course_id