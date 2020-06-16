# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jaws = Movie.new("Jaws")
puts jaws.title
# Movie.has_director

print Movie.all
puts "\n\n"

scream = Movie.new("Scream")
print Movie.all

paul = Viewer.new("Paul")
ann = Viewer.new("Ann")

puts "Viewer knows their username?"
puts paul.username
puts ann.username


review1 = Review.new(paul, jaws, 5)
review2 = Review.new(ann, jaws, 1)

puts "Viewer knows their reviews?"
puts paul.reviews == [review1]

review3 = Review.new(paul, scream, 5)
review4 = Review.new(ann, scream, 2)

puts paul.reviewed_movies == [jaws, scream]

puts "can find the highest rated movie"
puts Movie.highest_rated == scream 

twilight = Movie.new("Twilight")
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
