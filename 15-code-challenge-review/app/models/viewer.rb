class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews

    # look at all Reviews
    Review.all.select do |review|
    # pick the ones where the viewer is 
    # whoever called this method
        review.viewer == self

    end
  end

  def reviewed_movies
    # look at all Reviews
    # pick the reviews by me
    # my_reviews = Review.all.select do |review|
    #     review.viewer == self 
    # end
    # take the movies off of each review
    self.reviews.map do |review|
        review.movie
    end

  end

  def reviewed_movie?(movie)
    return self.reviewed_movies.include?(movie)
  end


  def rate_movie(movie, rating)

    # see if there is a review for this viewer and this movie
    review = Review.all.find do |review|
        review.movie == movie && review.viewer == self
    end
    # if there isn't, create one
    if review.nil?
        Review.new(self, movie, rating)
    else
         # if there is, update the rating
         review.rating = rating
    end
 
  end
  
end



