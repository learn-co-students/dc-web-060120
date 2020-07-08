# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.destroy_all
Student.destroy_all

cat = Student.create(name: "Cat", grade: 10)
luis = Student.create(name: "Luis", grade: 11)
matine = Student.create(name: "Matine", grade: 9)

calc = Course.create(title: "Calculus", level: 101)
hist = Course.create(title: "History", level: 200)