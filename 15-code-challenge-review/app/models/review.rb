class Review

    attr_accessor :rating
    attr_reader :viewer, :movie

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all << self

    end

    def self.all 
        return @@all
    end

end
