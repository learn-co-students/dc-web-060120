class Movie

  attr_accessor :title

  @@all = []

  @@has_director = true

  def initialize(title)
    @title = title
    self.class.all << self # in an instance method, self is the instance
  end

  def self.all # in a method name, self is the class
    @@all
  end


  def reviews
    Review.all.select do |review|
        review.movie == self
    end
  end

  def reviewers
    self.reviews.map do |review|
        review.viewer
    end

  end

  def ratings
    # returns array of all ratings for this movie
    self.reviews.map do |review|
        review.rating
    end
  end

  def average_rating
    total_rating = ratings.sum.to_f
    num_of_ratings = ratings.length
    return total_rating / num_of_ratings
  end

  def self.highest_rated
    # returns movie with highest average rating

    # get averages of all movies and call the max on that array
    # all_average_ratings = Movie.all.map do |movie|
    #     movie.average_rating 
    # end
    #  # [3.0, 3.5]
    #  max_rating = all_average_ratings.max # 3.5

    #  Movie.all.find do |movie|
    #     movie.average_rating == max_rating
    # end
    Movie.all.max_by {|movie| movie.average_rating}
  end


  # def title
  #   @title
  # end

  # def title=(new_title)
  #   @title = new_title
  # end

  # def say_the_title
  #   "My title is #{@title}"
  # end
end


# class Play

#     @@has_director = false
# end